class Client < ActiveRecord::Base
	validates :name, :presence => true
	validates :DOB, :presence => true
	validates :address, :presence => true
	validates :phone, :presence => true
	validates :email, :presence => true
	validates :date_started, :presence => true
	
	has_many :logs
end
