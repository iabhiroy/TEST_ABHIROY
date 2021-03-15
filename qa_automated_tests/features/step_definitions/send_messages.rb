Given(/^I Login with user "([^"]*)" and password "([^"]*)"$/) do |email, pwd|
  On Login do |page|
    page.user_login(email, pwd)
  end
end

When(/^I enter "([^"]*)" message and click send$/) do |msg|
  On Chat do |page|
    page.send_message(msg)
  end
end