class LogsController < ApplicationController
  
  before_filter(:get_client)
  
  def get_client
	@client = Client.find(params[:client_id])
  end

  # GET /logs/1
  # GET /logs/1.xml
  def show
    @log = @client.logs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log }
    end
  end

  # GET /logs/new
  # GET /logs/new.xml
  def new
    @log = Log.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log }
    end
  end

  # POST /logs
  # POST /logs.xml
  def create
	@log = @client.logs.new(params[:log])
	
	if @log.save
		@log.BMI = (703 * @log.weight) / (@log.height * @log.height)
		@log.BMR = (21.6 * @log.BMI / 2.20462262) +370
		@log.TDEE = @log.BMR * 1.55
		@sum = (@log.s_pec1+@log.s_pec2+@log.s_pec3+@log.s_ab1+@log.s_ab2+@log.s_ab3+@log.s_thigh1+@log.s_thigh2+@log.s_thigh3
			+@log.s_sub1+@log.s_sub2+@log.s_sub3+@log.s_sup1+@log.s_sup2+@log.s_sup3+@log.s_ax1+@log.s_ax2+@log.s_ax3)/3
		@body_density = 1.112 - (0.00043499 * @sum) + (0.00000055 * @sum * @sum) - (0.00028826 * @log.age)
		@log.body_fat = ((4.95 / @body_density) - 4.5) * 100
		@log.LBM = @log.weight * (100-@log.body_fat) * 0.01
	end
	
    respond_to do |format|
      if @log.save
        format.html { redirect_to(client_log_url(@client,@log), :notice => 'Log was successfully created.', :id => @client) }
        format.xml  { render :xml => @log, :status => :created, :location => @log }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @log.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # GET /logs/1/edit
  def edit
    @log = @client.logs.find(params[:id])
  end

  # PUT /logs/1
  # PUT /logs/1.xml
  def update
    @log = @client.logs.find(params[:id])

	if @log.save
		@log.BMI = (703 * @log.weight) / (@log.height * @log.height)
		@log.BMR = (21.6 * @log.BMI / 2.20462262) +370
		@log.TDEE = @log.BMR * 1.55
		@sum = (@log.s_pec1+@log.s_pec2+@log.s_pec3+@log.s_ab1+@log.s_ab2+@log.s_ab3+@log.s_thigh1+@log.s_thigh2+@log.s_thigh3
			+@log.s_sub1+@log.s_sub2+@log.s_sub3+@log.s_sup1+@log.s_sup2+@log.s_sup3+@log.s_ax1+@log.s_ax2+@log.s_ax3)/3
		@body_density = 1.112 - (0.00043499 * @sum) + (0.00000055 * @sum * @sum) - (0.00028826 * @log.age)
		@log.body_fat = ((4.95 / @body_density) - 4.5) * 100
		@log.LBM = @log.weight * (100-@log.body_fat) * 0.01
	end
	
    respond_to do |format|
      if @log.update_attributes(params[:log])
        format.html { redirect_to(client_url(@client), :notice => 'Log was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log.errors, :status => :unprocessable_entity }
     end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.xml
  def destroy
    @log = @client.logs.find(params[:id])
    @log.destroy

    respond_to do |format|
      format.html { redirect_to(client_url(@client)) }
      format.xml  { head :ok }
    end
  end
end
