*** Settings ***
Documentation       This site has registeration functionlality
Force Tags      register regression
Library     SeleniumLibrary        30  30
Library     OperatingSystem
Test Template  Negative Register Scenarios
Test Setup  Open My Browser                         #test setup added
Test Teardown   Close All Browsers                  #test tear down added

*** Test Cases ***
Title1  Siva  Sankar  ss@mail.com  Password1  Password1
Title2  SAchin  tendulkar  sachin@mail.com  Pass1  Pass1

*** Keywords ***
Open My Browser
        Open Browser        http://magento.com       gc
Negative Register Scenarios
        [Arguments]   ${fname}  ${lname}    ${email}  ${pwd}  ${cpwd}
        Maximize Browser Window
        Click link  MY ACCOUNT              #or we can use-- Click Element  Link:MY ACCOUNT
        Click Element       //*[@id='login-form']/div/div/div[2]/div/button       ## xpath://span[text()='Register']  #here the button Xpath is taken
        Input text      id:firstname        ${fname}
        Input text      id:lastname     ${lname}
        input text      id:email_address        ${email}
        Select From List by Index      id:customer_company_type     5
        Select From List by Index       customer_individual_role        1
        Input Password              id:password     ${pwd}
        Input Password              id:confirmation     ${cpwd}
        Select Frame        //iframe[@role='presentation']
        Click Element       class:recaptcha-checkbox-checkmark
        Unselect Frame
        Select Checkbox     id:agree_terms
        Close All Browsers





*** Keywords ***
Provided precondition
    Setup system under test