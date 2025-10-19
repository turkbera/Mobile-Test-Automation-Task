*** Settings ***
Documentation  Test suite for application openning. 
...    Tested by verifying that the email input field is displayed.
Library      AppiumLibrary
Resource     ../resources/base/BasePage.robot
Resource    ../resources/pages/LoginPage.robot

*** Test Cases ***
Should open application and verify input field is displayed
    [Tags]    OpenApplication    positive
    Open Take Note App
    Verify Email Input Filed Is Displayed