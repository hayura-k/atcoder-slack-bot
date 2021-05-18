require 'selenium-webdriver'
require 'pry'

driver = Selenium::WebDriver.for :chrome
sleep 1
driver.navigate.to 'https://kenkoooo.com/atcoder/#/table/'
driver.find_element(:css, '#react-bs-table-container')
