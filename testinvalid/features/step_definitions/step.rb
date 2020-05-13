require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

Given (/^I open amazon page$/) do
    driver.navigate.to "https://www.amazon.com/"
    sleep(2)
end

Given (/^I click sign in label$/) do
    driver.find_element(:xpath=>'//*[@id="nav-link-accountList"]').click
    sleep(2)
end

Given (/^I enter invalid username$/) do
    driver.find_element(:xpath=>'//*[@id="ap_email"]').send_keys('justdictatorgmail.com')
    sleep(2) 
end

And (/^I click continue button$/) do
    driver.find_element(:xpath=>'//*[@id="continue"]').click
    sleep(2)
end