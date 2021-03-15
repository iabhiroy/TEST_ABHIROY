Feature: Verify the signup proces works as expected

Scenario: Positive scenario when user enters valid email and password
Given I navigate to "http://localhost:3000"
When I enter "test@gmail.com" as email "Testing123" as password and "Testing123" as confirm password
And I click on button with attribute "submit-button"
Then I should see "Log Out" text on the webpage



