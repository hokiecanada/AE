class CreateHtmlTable < ActiveRecord::Migration
  def self.up
	create_table :htmls do |t|
		t.text	:home
		t.text	:program
		t.text	:pricing
		t.text	:facilities
		t.text	:camps
		t.text	:massage
		t.text	:contact
		t.text	:other1
		t.text	:other2
		t.text	:other3
		t.text	:other4
	end
  end

  def self.down
	drop_table :htmls
  end
end
