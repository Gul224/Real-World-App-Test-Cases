Feature: Sign up
To check user is able to sign up 

Background: 
    Given User open Real World Application
    And user clicks on Sign up link
    Then user is on signup page  


Scenario Outline: Gul is able to enter valid data and trying to sign up for real world application
      Given Gul enters all mandatory <Field Names> 
      When  Gul clicks on sign up button
      Then Application redirects to sign in page and with Gul's created account 

   Example: 
      | Field Names      |
      | First Name       |
      | Last Name        |
      | Username         |
      | Password         |
      | Confirm Password |





Scenario: Gul enters Password less then 4 characters
     Given Gul enters password as "123"
     And confirm password "123"
     Then error message is thrown "Password must contain at least 4 characters"


Scenario: Gul enters wrong confirm password and trying to sign up 
     Given Gul enters password as "Gul123"
     When Gul enters Confirm Password as "Gull"
     And Sign up should not be enabled 
     Then error message should populate as "Password does not match"


Scenario Outline: Blank fields
Given Gul didnt enter mandatory <Field Names>
When Sign up button is disabled
Then Error message is thrown below mandatory fields 

Examples:
      | Field Names       |
      | First Name        |
      | Last Name         |
      | Username          |
      | Password          |
      | Confirm Password  |


