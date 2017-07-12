require 'rspec'
require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

def desired_capabilities
  {caps:{
  "platformName": "Android",
  "platformVersion": "7.1.1",
  "deviceName": "emulator-5554",
  "app": "/Users/Tech-A29/Downloads/ContactManager.apk"
}
}  
end


