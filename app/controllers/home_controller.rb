class HomeController < ApplicationController
  
  def user
	authenticate_user!
	
	respond_to do |format|
		format.html
	end
  end
  
  def admin
	authenticate_admin!
	
	respond_to do |format|
		format.html
	end
  end

  def home
	@html = Html.first
    respond_to do |format|
		format.html
	end
  end
  
  def program
	@html = Html.first
	respond_to do |format|
		format.html
	end
  end
  
  def camps
	@html = Html.first
	respond_to do |format|
		format.html
	end
  end
  
  def pricing
	@html = Html.first
	respond_to do |format|
		format.html
	end
  end
  
  def signup
	@html = Html.first
	respond_to do |format|
		format.html
	end
  end
  
  def facilities
	@html = Html.first
  end
  
  def massage
	@html = Html.first
  end
  
  def home_edit
	@html = Html.first
  end

  def program_edit
	@html = Html.first
  end

  def pricing_edit
	@html = Html.first
  end

  def signup_edit
	@html = Html.first
  end

  def massage_edit
	@html = Html.first
  end

  def camps_edit
	@html = Html.first
  end
  
  def facilities_edit
	@html = Html.first
  end
  
  def html
	@html = Html.new
    respond_to do |format|
		format.html
	end
  end
  
end
