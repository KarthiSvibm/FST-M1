@Activity4
Feature:Data driven test

@Loginstep @loginsuccessful
Scenario: Testing with correct login
Given the user is in login page
When the user provides "admin" and "password"
And clicks the submit button 
Then user gets confirmation message and expected text is "Welcome Back, admin"

    