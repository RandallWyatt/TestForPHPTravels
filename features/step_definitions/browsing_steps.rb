Given /^I go to the PHP Travels Page landing page$/ do
  visit(LandingPage)
end

When(/^I select the PHP Travels page$/) do
  on(LandingPage).link_to_phptravels
end