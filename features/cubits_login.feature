Feature: Test login for registered users
Scenario: Successfull login        
Given I am a registered user in the Cubits login page
When I fill in the username field with "dricco@hotmail.com"
And I fill in the password field with "Suborder.7"
And I click on the login button
Then I see the transactions available for logged in users