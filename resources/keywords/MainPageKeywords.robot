*** Settings ***
Documentation  Main page specific keywords that is being used in testcases
Resource    ../pages/MainPage.robot
Resource    ../base/BasePage.robot
Resource    LoginPageKeywords.robot

*** Keywords ***

Open Main Page
    Open Take Note App
    Input User Email    a@a.a
    Submit Login
Verify Note Is Listed
    [Arguments]    ${title}
    ${locator}=    Build Note Locator By Title    ${title}
    Wait Until Element Is Visible    ${locator}    10s

Display a note
    [Arguments]    ${title}
    ${locator}=    Build Note Locator By Title    ${title}
    Click Element    ${locator}
    Sleep  1s
Delete A Note
    [Arguments]    ${title}
    Display a note    ${title}
    Press Delete Note Button

Verify A Note Is Deleted
    [Arguments]     ${title}
    [Documentation]    Assert that the note titled ${title} is no longer present in the list.
    ${locator}=    Build Note Locator By Title    ${title}
    Page Should Not Contain Element    ${locator}
