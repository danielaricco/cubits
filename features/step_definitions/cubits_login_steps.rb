#Navigate to site
Given(/^I am a registered user in the Cubits login page$/) do
 visit 'https://cubits.com/users/sign_in'
end

#Fill username
When(/^I fill in the username field with "([^"]*)"$/) do |username|
 fill_in 'user_email', :with => username
end

#Fill password
When(/^I fill in the password field with "([^"]*)"$/) do |password|
 fill_in 'user_password', :with => password
 end
 
#Click on the login button
When(/^I click on the login button$/) do
    click_button('Login')
end

#Wait 10 seconds and check if the user is logged in
Then(/^I see the transactions available for logged in users$/) do
 sleep (10)
 page.has_content?('nav__in')
end

#Wait 10 seconds and check if the error page is loaded
Then(/^I see the "([^"]*)" error message$/) do |errorMessage|
 sleep (10)
 page.should have_content(errorMessage)
end

