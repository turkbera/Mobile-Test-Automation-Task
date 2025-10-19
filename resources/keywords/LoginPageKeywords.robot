*** Settings ***
Documentation  Login page specific keywords that is being used in testcases
Resource    ../pages/LoginPage.robot
Resource    ../base/BasePage.robot

*** Keywords ***
Open Login Page
    Open Take Note App

Login 
    [Arguments]    ${email}
    Verify Email Input Filed Is Displayed
    Input User Email    ${email}
    Submit Login

Attempt Login With Invalid Email
    [Arguments]    ${invalid_email}
    [Documentation]    Try to login with invalid email and verify error appears
    Login    ${invalid_email}
    Verify Invalid Email Warning Appears
    Dismiss Alert Dialog

Login with inputting just email
    [Arguments]  ${email}
    Login    ${email}
    Verify Login Is Successful