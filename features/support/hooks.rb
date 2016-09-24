require 'selenium-webdriver'

Before do

  # Specify the driver path
  chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
  Selenium::WebDriver::Chrome.driver_path = chromedriver_path

  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.maximize
end


After do |scenario|
  if scenario.failed? #take pic save , embed in report
    print path = @browser.current_url
    @browser.save_screenshot("report/#{scenario.__id__}.png")
    embed("report/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end

  @browser.close
  @browser.quit

end