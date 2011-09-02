class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
	  t.string :name
	  t.date :DOB
      t.text :address
      t.string :phone
      t.string :email
      t.string :school
      t.date :date_started
      t.datetime :created_at
      t.datetime :updated_at
      t.string :sports
      
	  t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
