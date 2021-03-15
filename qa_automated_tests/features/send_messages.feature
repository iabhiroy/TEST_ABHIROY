Feature: Verify the message sending process works as expected

Scenario Outline: Sending different types of POSITIVE messages in chats
Given I Login with user "test@gmail.com" and password "Testing123"
Then I should see "Log Out" text on the webpage
When I enter "<messages>" message and click send
Then I should not see "message sending failed" text on the webpage
Examples:
|messages|
|Hello World!!!        |
|$£&^%*%*&%*           |
|1234576               |
|A1phaNum3r1cs         |

