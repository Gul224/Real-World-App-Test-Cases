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

Scenario Scenario Outline: Invalid Routing Number
     Given Thanos Enters bankname: "Kotak"
     And RoutingNumber : <field name>
     Then save button should not be enabled and error message "Must contain Valid Routing number"
      Examples: 
        |  Routing Number   |   
        |  123              |
        |  12345678909866   |
         
 Scenario Outline: Invalid Account number
      Given Thanos enters bankname: "Kotak"
      And AccountNumber : <field name>
      Then save button should not be enabled and error message should be thrown
      Examples: 
      |  Account number  | 
      | 1234567890988777 | 
      | 123455           | 

Scenario: Blank fields
     Given Thanos Enters bankname: ""
     And RoutingNumber : ""
     And AccountNumber : ""
     Then errors for each field will be shown and save button will be disabled 

 
