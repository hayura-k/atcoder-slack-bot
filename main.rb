require 'selenium-webdriver'
require 'pry'

driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 100)
urls = []

driver.get('https://kenkoooo.com/atcoder/#/table/')
elements = driver.find_elements(:tag_name, 'tr')

wait.until {elements.length > 0}

elements.each_with_index do |element, i|
  if i != 0
    urls << element.find_element(:tag_name, 'td').find_element(:tag_name, 'a').attribute('href')
  end
end

p urls
