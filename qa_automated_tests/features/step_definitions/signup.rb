Given(/^I navigate to "([^"]*)"$/) do |url|
  @browser.goto(url)
end

When(/^I enter "([^"]*)" as email "([^"]*)" as password and "([^"]*)" as confirm password$/) do |email, pwd, confirm_pwd|
  On Signup do |page|
    page.user_signup(email, pwd, confirm_pwd)
  end
end

And(/^I click on button with attribute "([^"]*)"$/) do |element_attribute|
  click_button(element_attribute)
  end

Then(/^I should see "([^"]*)" text on the webpage$/) do |exp_text|
  @browser.text.should include(exp_text)
end

Then(/^I should not see "([^"]*)" text on the webpage$/) do |exp_text|
  @browser.text.should_not include(exp_text)
end