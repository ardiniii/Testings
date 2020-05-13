require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

Given (/^I open amazon page$/) do
    driver.navigate.to "https://www.amazon.com/"
    sleep(2)
end

Given (/^I hover sign in label$/) do
    driver.find_element(:xpath=>'//*[@id="nav-link-accountList"]')
    sleep(2)
end

Given (/^I click register button$/) do
    driver.find_element(:xpath=>'//*[@id="nav-signin-tooltip"]/div/a').click
    sleep(2)
end  

Given (/^I input all required fields$/) do
    driver.find_element(:xpath=>'//*[@id="ap_customer_name"]').send_keys('input the customer name')
    sleep(2) 
    driver.find_element(:xpath=>'//*[@id="ap_email"]').send_keys('input valid email with format xxx@xxx.com')
    sleep(2) 
    driver.find_element(:xpath=>'//*[@id="ap_password"]').send_keys('input password')
    sleep(2) 
    driver.find_element(:xpath=>'//*[@id="ap_password_check"]').send_keys('input password again')
    sleep(2)  
end

And (/^I click create amazon account button$/) do
    driver.find_element(:xpath=>'//*[@id="continue"]').click
    sleep(2)    
end