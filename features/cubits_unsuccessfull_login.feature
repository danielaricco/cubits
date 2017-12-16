Feature: Test unsuccessfull login for registered users
Scenario: Successfull login        
Given I am a registered user in the Cubits login page
When I fill in the username field with "dricco@hotmail.com"
And I fill in the password field with "abc123"
And I click on the login button
Then I see the "INVALID EMAIL OR PASSWORD" error message