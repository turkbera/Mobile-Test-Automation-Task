*** Settings ***
Documentation  Test suite for email login functionality
...    Verifies
...    - Valid email login attempt
...    - Invalid email login attempt and error handling
Library      AppiumLibrary
Resource     ../resources/keywords/LoginPageKeywords.robot
Test Setup    Open Login Page
Test Teardown  Close Application
*** Test Cases ***
Should login with inputting just email
    [Documentation]    Verify successful login with valid email format
    [Tags]    login    positive
    Login with inputting just email    a@a.a

Should input invalid email(no @ or .source) opens an alert and dismisses it
    [Documentation]    Verify invalid email shows alert with proper error message
    ...    Application checks whether the given email is in the form of a valid email, if not displays an error message.
    [Tags]    login    negative
    Attempt Login With Invalid Email    a