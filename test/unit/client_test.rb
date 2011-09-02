require "test_helper"

class ClientTest < ActiveSupport::TestCase
  
  test "should not save without name" do
	client = Client.new
	client.name = ""
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	assert !client.save, "Saved the client without a name"
  end
  
  test "should not save without DOB" do
	client = Client.new
	client.name = "Bob"
    client.DOB = ""
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	assert !client.save, "Saved the client without a DOB"
  end
  
  test "should not save without address" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = ""
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	assert !client.save, "Saved the client without an address"
  end
  
  test "should not save without phone" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = ""
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	assert !client.save, "Saved the client without a phone"
  end
  
  test "should not save without email" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = ""
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	assert !client.save, "Saved the client without an email"
  end
  
  test "should not save without start date" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = ""
    client.sports = "volleyball"
	assert !client.save, "Saved the client without a date"
  end
  
  test "should save without school & sport" do
    client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = ""
    client.date_started = "2010-10-10"
    client.sports = ""
	assert client.save, "Did not save when only school & sport missing"
  end

  test "should not update without name" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.name = ""
	assert !client.update_attributes(client), "Updated the client without a name"
  end
  
  test "should not update without DOB" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.DOB = ""
	assert !client.update_attributes(client), "Updated the client without a DOB"
  end
  
  test "should not update without address" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.address = ""
	assert !client.update_attributes(client), "Updated the client without an address"
  end
  
  test "should not update without phone" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.phone = ""
	assert !client.update_attributes(client), "Updated the client without a phone"
  end
  
  test "should not update without email" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.email = ""
	assert !client.update_attributes(client), "Updated the client without an email"
  end
  
  test "should not update without start date" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.date_started = ""
	assert !client.update_attributes(client), "Updated the client without a date"
  end
  
  test "should update without school & sport" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	
	client.school = ""
	client.sports = ""
	assert client.update_attributes(client), "Did not update when only school & sport missing"
  end
  
  test "client gets added" do
    num = Client.count
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	assert_equal(Client.count,num)
	client.save
	assert_equal(Client.count,num+1)
  end
  
  test "client gets deleted" do
	client = Client.new
	client.name = "Bob"
    client.DOB = "1980-02-08"
    client.address = "12 winding way"
    client.phone = "1-800-555-1234"
    client.email = "me@what.com"
    client.school = "VT"
    client.date_started = "2010-10-10"
    client.sports = "volleyball"
	client.save
	num = Client.count
	client.destroy
	assert_equal(Client.count, num-1)
  end
  
end
