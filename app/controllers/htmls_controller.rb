class HtmlsController < ApplicationController

  def create
    html = Html.create(params[:html])
	redirect_to root_path
  end

  def update
	html = Html.first
	html.update_attributes(params[:html])
	if params[:redirect] == "home"
		redirect_to home_path
	elsif params[:redirect] == "program"
		redirect_to program_path
	elsif params[:redirect] == "pricing"
		redirect_to pricing_path
	elsif params[:redirect] == "camps"
		redirect_to camps_path
	elsif params[:redirect] == "signup"
		redirect_to signup_path
	elsif params[:redirect] == "massage"
		redirect_to massage_path
	elsif params[:redirect] == "facilities"
		redirect_to facilities_path
	else
		redirect_to root_path
	end
  end
  
  def destroy
    html = Html.find(params[:id])
    html.destroy
	redirect_to root_path
  end

end
