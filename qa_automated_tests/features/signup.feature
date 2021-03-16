Feature: Verify the signup process works as expected

Scenario: Positive scenario when user enters valid email and password
Given I navigate to "http://localhost:3000"
When I enter "test@gmail.com" as email "Testing123" as password and "Testing123" as confirm password
And I click on button with attribute "submit-button"
Then I should see "Log Out" text on the webpage

Scenario: Negative scenario, invalid email
Given I navigate to "http://localhost:3000"
When I enter "testgmail.com" as email "Testing123" as password and "Testing123" as confirm password
And I click on button with attribute "submit-button"
Then I should see "Please include an '@' in the email address." text on the webpage
  
Scenario: Negative scenario, wrong confirm pwd
Given I navigate to "http://localhost:3000"
When I enter "test@gmail.com" as email "Testing123" as password and "Testing" as confirm password
And I click on button with attribute "submit-button"
Then I should see "Password confirmation doesn't match Password" text on the webpage

Scenario: Negative scenario, empty email
Given I navigate to "http://localhost:3000"
When I enter "" as email "Testing123" as password and "Testing123" as confirm password
And I click on button with attribute "submit-button"
Then I should see "Email is invalid" text on the webpage

Scenario: Negative scenario, empty email and password
Given I navigate to "http://localhost:3000"
When I enter "" as email "" as password and "" as confirm password
And I click on button with attribute "submit-button"
Then I should see "Email is invalid" text on the webpage
And I should see "Password can't be blank" text on the webpage




