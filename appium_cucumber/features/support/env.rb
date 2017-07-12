require 'cucumber'
require 'appium_lib'

def desired_capabilities
  {caps:{
  "platformName": "Android",
  "platformVersion": "7.1.1",
  "deviceName": "emulator-5554",
  "app": "/Users/Tech-A29/Downloads/ContactManager.apk"
}
}  
end

# Creating a new instance of the virtual smart phone
Appium::Driver.new(desired_capabilities)

# Define a class for Appium world
class AppiumWorld
end

# AppiumWorld inherits all of the methods from Appium
Appium::promote_appium_methods(AppiumWorld)

World do
	AppiumWorld.new
end

# $driver.start_driver = Appium.driver.start_driver
Before{$driver.start_driver}
After{$driver.driver_quit}