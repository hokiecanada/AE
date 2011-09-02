require 'test_helper'

class LogsControllerTest < ActionController::TestCase
  setup do
	@log = logs(:one)
	@client = Client.new
	@client.name = "Bob"
    @client.DOB = "1980-02-08"
    @client.address = "12 winding way"
    @client.phone = "1-800-555-1234"
    @client.email = "me@what.com"
    @client.school = "VT"
    @client.date_started = "2010-10-10"
    @client.sports = "volleyball"
	@client.save
	
	@log1 = @client.logs.new
	@log1.log_date = "2010-10-10"
	@log1.height="9"
	@log1.weight="10"
	@log1.s_pec1="10"
	@log1.s_pec2="10"
	@log1.s_pec3="10"
	@log1.s_ab1="10"
	@log1.s_ab2="10"
	@log1.s_ab3="10"
	@log1.s_thigh1="10"
	@log1.s_thigh2="10"
	@log1.s_thigh3="10"
	@log1.s_tricep1="10"
	@log1.s_tricep2="10"
	@log1.s_tricep3="10"
	@log1.s_sub1="10"
	@log1.s_sub2="10"
	@log1.s_sub3="10"
	@log1.s_sup1="10"
	@log1.s_sup2="10"
	@log1.s_sup3="10"
	@log1.s_ax1="10"
	@log1.s_ax2="10"
	@log1.s_ax3="10"
	@log1.age ="10"
  end

  test "should get new" do
    get :new, :client_id => @client
    assert_response :success
  end

  test "should create log" do
		
    post :create, :client_id => @client, :id => { :log_date => '2010-10-10', :height=>'9', :weight=>'10',
	:s_pec1=>'10', :s_pec2=>'10', :s_pec3=>'10', :s_ab1=>'10', :s_ab2=>'10',
	:s_ab3=>'10', :s_thigh1=>'10', :s_thigh2=>'10', :s_thigh3=>'10', :s_tricep1=>'10',
	:s_tricep2=>'10', :s_tricep3=>'10', :s_sub1=>'10', :s_sub2=>'10', :s_sub3=>'10',
	:s_sup1=>'10', :s_sup2=>'10', :s_sup3=>'10', :s_ax1=>'10', :s_ax2=>'10', :s_ax3=>'10',
	:age =>'10' }
	
	assert(Log.count > 0)
  end

  test "should show log" do
	@log1.save
		
    get :show, :client_id => @client, :id => @log1
    assert_response :success
  end

  test "should get edit" do
	@log1.save
	
    get :edit, :client_id => @client, :id => @log1
    assert_response :success
  end

  test "should update log" do
	@log1.save

	@log1.height = "100"
	
    put :update, :client_id => @client, :id => @log1
    
	assert_redirected_to client_path
  end

  test "should destroy log" do
	@log1.save
	
	assert_difference('Log.count', -1) do
      delete :destroy, :client_id => @client, :id => @log1
    end

    assert_redirected_to client_path
  end
end
