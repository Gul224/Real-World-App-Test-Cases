Feature: Make a Payment 
To check user is able to Make payment 

Background:
Given User logged into Real world Application
And User click on New button
And user selects account 
Then user is on payment page   

Scenario: Valid data
     Given Amount "1000"
     And Add a note "Miscellanious"
     And Click on Request button
     Then should see "Transaction submitted" message 
     And "Requested $1000 for Miscellanious" message

Scenario: Valid Data 
     Given Amount "1500"
     And Add a note "services"
     And click on Pay button 
     Then should see "Transaction submitted" message 
     And "Paid $1500 for Services" message 

Scenario: Blank Amount field 
     Given Amount ""   
     And Add a note "Services" 
     Then "Request" and "Pay" button should not be enabled 
     And error message should get populated "Please enter a valid amount"

Scenario: Blank Add a note field      
     Given Amount "2000"
     And Add a note ""
     Then "Request" and "Pay" button should not be enabled 
     And error message should get populated "Please enter a note"



