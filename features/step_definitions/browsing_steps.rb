Given /^I go to the PHP Travels Page landing page$/ do
  visit(LandingPage)
end

When /^I select the PHP Travels page$/ do
  on(LandingPage).link_to_phptravels
end

And /^I choose a tour to take$/ do
  @browser.window(:title => /Travel/).use
  on(ToursPage).hong_kong_tour
end

And /^I make my booking selections$/ do
  on(HongKongPage).vacation_options
end

And(/^I enter my personal information$/) do
  on(PersonalInformation).customer_information_form
end

Then(/^I will be ready for vacation$/) do
  on(Invoice).should_contain_text 'Invoice'
end