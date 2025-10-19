*** Settings ***
Documentation    Atomic actions for Login Pages 
...    They will be used to create complex keywords in LoginPageKeywords
Library    AppiumLibrary
Resource    ../base/BasePage.robot
Resource    ../locators/LoginPageLocators.robot
Resource    ../locators/MainPageLocators.robot

*** Keywords ***
Verify Email Input Filed Is Displayed
    Wait Until Element Is Visible    ${LOGIN_EMAIL_INPUT}

Input User Email
    [Arguments]  ${email}
    Verify Email Input Filed Is Displayed
    Clear Text    ${LOGIN_EMAIL_INPUT}
    Input Text When Visible  ${LOGIN_EMAIL_INPUT}    ${email}


Submit Login
    Click Element    ${LOGIN_SUBMIT_BUTTON}


Verify Login Is Successful
    Wait Until Element Is Visible    ${ADD_NOTE_BUTTON}

Verify Invalid Email Warning Appears
    [Documentation]    Verify that React Native Alert with 'Please enter a valid email address' appears
    ${alert_text}=    Set Variable    enter a valid email
    Wait Until Page Contains    ${alert_text}    timeout=5s

Dismiss Alert Dialog
    [Documentation]    Dismiss the React Native Alert by tapping OK
    ${ok_button}=    Set Variable    android:id/button1
    Click Element When Visible    ${ok_button}