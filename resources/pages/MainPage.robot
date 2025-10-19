*** Settings ***
Documentation    Atomic actions for Main Pages 
...    They will be used to create complex keywords in MainPageKeywords
Library     AppiumLibrary
Resource    ../locators/MainPageLocators.robot
Resource    ../base/BasePage.robot

*** Keywords ***
Press Add Note Button
    Click Element When Visible    ${ADD_NOTE_BUTTON}
Press Delete Note Button
    Click Element When Visible    ${DELETE_NOTE_BUTTON}
Press Save Note Button
    Click Element When Visible    ${SAVE_NOTE_BUTTON}
Press Cancel Note Button
    Click Element When Visible    ${CANCEL_NOTE_BUTTON}
Enter Note Title
    [Arguments]    ${title}
    Input Text When Visible    ${NOTE_TITLE_INPUT}    ${title}

Enter Note Body
    [Arguments]    ${body}
    Input Text When Visible    ${NOTE_CONTENT_INPUT}    ${body}
    
Choose Note Category
    [Arguments]    ${category_button}
    Click Element When Visible    ${category_button}

Verify Note Modal Appears
    Wait Until Element Is Visible    ${NOTE_TITLE_INPUT}

Build Note Locator By Title
    [Arguments]    ${title}
    ${locator}=    Set Variable    accessibility_id=Open note ${title}
    RETURN   ${locator}