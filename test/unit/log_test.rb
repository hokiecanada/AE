require "test_helper"

class LogTest < ActiveSupport::TestCase

  test "log not created" do
    log = Log.new
	assert !log.save, "Saved log without required values"
	assert_equal(log.errors.count, 25)
  end
  
  test "log created" do
	log = Log.new
  	log.log_date = "2010-10-10"
	log.height = "72"
	log.weight = "160"
	log.age = "25"
	log.s_pec1 = "15"
	log.s_pec2 = "15"
	log.s_pec3 = "15"
	log.s_ab1 = "15"
	log.s_ab2 = "15"
	log.s_ab3 = "15"
	log.s_thigh1 = "15"
	log.s_thigh2 = "15"
	log.s_thigh3 = "15"
	log.s_tricep1 = "15"
	log.s_tricep2 = "15"
	log.s_tricep3 = "15"
	log.s_sub1 = "15"
	log.s_sub2 = "15"
	log.s_sub3 = "15"
	log.s_sup1 = "15"
	log.s_sup2 = "15"
	log.s_sup3 = "15"
	log.s_ax1 = "15"
	log.s_ax2 = "15"
	log.s_ax3 = "15"
	assert log.save, "Log not saved when it should be"
  end
  
  test "log gets updated" do
  end
  
  test "log gets destroyed" do
  end
  
  test "log not updated with missing values" do
  end
  
  test "log not created with missing values" do
  end

end
