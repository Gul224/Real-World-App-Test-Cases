Feature: User Can add bank account
To check user is able to add bank acccount details 

Background:
Given User logged into Real world Application
And user into bank Account screen
And User has any existing accounts 


Scenario: Thanos is able to create a bank account by clicking on create account button
Given Thanos Enters bankname: "Kotak"
     And RoutingNumber : "123456789"
     And AccountNumber : "123456789"
     And click on save button
     Then should see "Kotak" in the bank Accounts list 





Scenario: Invalid Routing Number
     Given Thanos Enters bankname: "Kotak"
     And RoutingNumber : "123"
     Then save button should not be enabled and error message should be thrown 



Scenario: Invalid Account number
      Given Thanos enters bankname: "Kotak"
      And AccountNumber : "12345555555555555"
      Then save button should not be enabled and error message should be thrown
 

Scenario: Blank fields
     Given Thanos Enters bankname: ""
     And RoutingNumber : ""
     And AccountNumber : ""
     Then save button should not be enabled 

 
