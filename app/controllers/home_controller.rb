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
    respond_to do |format|
		format.html
	end
  end
  
  def program
	respond_to do |format|
		format.html
	end
  end
  
  def camps
	respond_to do |format|
		format.html
	end
  end
  
  def pricing
	respond_to do |format|
		format.html
	end
  end
  
  def signup
	respond_to do |format|
		format.html
	end
  end
  
end
