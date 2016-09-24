
Given(/^Im on wikipedia portal$/) do
  visit_page(WikipediaHomePage)
  expect(on_page(WikipediaHomePage).title.include? "Wikipedia").to be true
end

When(/^I search for "([^"]*)" and i click on the suggestion$/) do |arg1|
  on_page(WikipediaHomePage).search arg1
  expect(on_page(WikipediaHomePage).searchdidyoumean_element.visible?).to be true
  on_page(WikipediaHomePage).suggestion_element.click
  expect(on_page(WikipediaHomePage).searchList_element.length == 20).to be true

end

Then(/^I click on the first result$/) do
   on_page(WikipediaHomePage).searchList_element[0].element.click
   expect(on_page(WikipediaHomePage).title).to_not be_nil
   expect(on_page(WikipediaContentPage).content).to_not be_nil
end
