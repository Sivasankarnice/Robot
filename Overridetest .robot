*** Settings ***
Test Setup  Open My Browser
Test Teardown  Close All Browsers
Library     SeleniumLibrary        30  30
Library     OperatingSystem

*** Test Cases ***
Register

        Click link  MY ACCOUNT
        Click Element       //*[@id='login-form']/div/div/div[2]/div/button
        Input text      id:firstname        Siva
        Input text      id:lastname     Sankar
        input text      id:email_address        ss@mail.com
        Select From List by Index      id:customer_company_type     5
        Select From List by Index       customer_individual_role        1
        Input Password              id:password     Pww11
        Input Password              id:confirmation     Pww11
        Select Frame        //iframe[@role='presentation']
        Click Element       class:recaptcha-checkbox-checkmark
        Unselect Frame
        Select Checkbox     id:agree_terms
        Submit Form

Login
        [Setup]  Go Back
        Input Text  id:email  nataragan.ramanathan@gmail.com
        Input Password  id:pass  Welcome123
        Click Element  id:Send2
        Element Should be Visible  link:Log Out
        Click Link  Log Out

*** Keywords ***
Open My Browser
        Open Browser        http://magento.com       gc
        Maximize Browser Window
