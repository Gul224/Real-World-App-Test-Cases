Feature: User Login 
To check user is able to login to the Real world app

Background:
     Given url yarn start
     Then user is on login page of Real world Application
     
Scenario: Login with Valid Credentials
     Given  Username  "Gul"
     And Password   "Gul1234"
     And Click on Sign in button   
     Then User is logged into Real world Application

Scenario: Login with Invalid Credentials 
     Given Username "!@@@@"
     And Password "g!@##"
     And Click on sign in button 
     Then error message is thrown "Username or Password is invalid"

Scenario: Login with Invalid Username
     Given Username "!@##"
     And Password "Gul1234"
     And click on sign in button
     Then error message is thrown "Username or Password is invalid"

Scenario: Login with Invalid Password
     Given Username "Gul"
     And Password "g!Qw"
     Then error message is thrown "Username or Password is invalid"

Scenario: Login with less then 4 letter Password
     Given Username "Gul"
     And Password "g"
     Then Sign in button should not be enabled
     And error message should get populated "Password must contain atleast 4 characters"

Scenario: Login with one blank field 
      Given Username "Gul"
      And Password ""
      Then sign in button should be disabled 
      And error message "Password is required"

Scenario: Login with Blank fields both Username and password
      Given Username ""
      And Password  ""
      Then sign in button should be disabled
      And error message "Username is required, Password is required"

      