require 'selenium-webdriver'
require 'pry'

driver = Selenium::WebDriver.for :chrome
sleep 1
driver.get('https://kenkoooo.com/atcoder/#/table/')
els = driver.find_element(:class, 'react-bs-container-body').find_element(:tag_name, 'tbody').find_elements(:tag_name, 'tr')

els[0].find_element(:tag_name, 'td').find_element(:tag_name, 'a').click

# els[0].each do |el|
#   el.find_element(:tag_name, 'td')
# end
# p els[1]
sleep 5
