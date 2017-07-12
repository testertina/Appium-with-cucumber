require 'spec_helper'

describe 'Testing stuff' do

	# Starts the appium driver defined in spec helper.
	before(:all) do
		Appium::Driver.new(desired_capabilities).start_driver
		# Module level method that allows you to pass a class which will inherit all of the appium methods.
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
	end

	# Closes the appium driver at the end of all tests.
	after(:all) do
		driver.quit
	end

	it 'App should load' do
		expect(find_element(:id, 'com.example.android.contactmanager:id/addContactButton').displayed?).to be true
	end
	
	it 'click add contact' do
		find_element(:id, 'com.example.android.contactmanager:id/addContactButton').click
		expect(find_element(:id, 'com.example.android.contactmanager:id/contactNameEditText').displayed?).to be true
	end

	it 'should input name' do
   contact = find_element(:id, 'com.example.android.contactmanager:id/contactNameEditText')
   contact.send_keys('John Doe')
   j = textfields_exact('John Doe')
   expect(j.length).to be > 0
 end

 it 'should input phone number' do
   phone = find_element(:id, 'com.example.android.contactmanager:id/contactPhoneEditText')
   phone.send_keys('078131234556')
 end

 it 'should input email address' do
   email = find_element(:id, 'com.example.android.contactmanager:id/contactEmailEditText')
   email.send_keys('test@email.com')
 end

	it 'test stuff' do
		binding.pry

	end

end