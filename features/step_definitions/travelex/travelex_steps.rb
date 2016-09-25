
Given(/^Im on travelex portal$/) do
  visit_page(TravelexHomePage)
end

When(/^I rezise the browser to (\d+)$/) do |arg1|
  @browser.manage.window.resize_to(arg1.to_i, 1200)
  expect(on_page(TravelexHomePage).slider_element.visible?).to be true
  #on_page(TravelexHomePage).slider_element.click
end

Then(/^A new slider appear$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

