*** Settings ***
Documentation    Data driven login test using DataDriver driver and csv
Library     AppiumLibrary
Library     DataDriver    ../data/emails.csv
Resource    ../resources/keywords/LoginPageKeywords.robot
Resource    ../resources/base/BasePage.robot
Test Setup     Open Login Page
Test Teardown  Close Application
Test Template    Test Email Input

*** Test Cases ***
Test email ${email} input ${expected_result}    Default    UserData

*** Keywords ***
Test Email Input
    [Documentation]    Template keyword for email validation
    ...    Accepts email and expected result:
    ...    - email: Email address
    ...    - expected_result: either 'valid' or 'invalid' 
    ...    Tests whether the emails are in correct form, and the app handles them correctly. 
    [Tags]    DataDriver    login
    [Arguments]    ${email}    ${expected_result}
    Run Keyword If    '${expected_result}' == 'valid'
    ...    Login With Inputting Just Email    ${email}
    ...    ELSE
    ...    Attempt Login With Invalid Email    ${email}
