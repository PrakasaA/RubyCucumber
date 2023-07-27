require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

Given('user on submit page') do
  driver.navigate.to('https://rahulshettyacademy.com/angularpractice/')
end

When('user input data') do
  driver.find_element(:name, 'name').send_keys('Arizal Prakasa')
  driver.find_element(:name, 'email').send_keys('jobprakasa@gmail')
  driver.find_element(:id, 'exampleInputPassword1').send_keys('Prakasa11')
  driver.find_element(:id,'exampleCheck1').click
  driver.find_element(:name, 'bday').send_keys('11051996')
  driver.find_element(:class, 'btn-success').click
end

Then('user get alert success') do
  driver.find_element(:class, 'alert-success').text.include?('Success!')
end