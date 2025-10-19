*** Settings ***
Documentation    Test suite for adding note 
...    Verifies:
...    - Addition of a new note
...    - Choosing category
...    - Displaying correctly the saved note
Resource    ../resources/keywords/MainPageKeywords.robot
Resource    ../resources/base/BasePage.robot
Suite Setup    Open Main Page
Test Teardown    Sleep    1s
Suite Teardown    Close Application
*** Test Cases ***
Should create a note and verify it is listed
    [Tags]    createNote    mainPage    positive
    Press Add Note Button
    Verify Note Modal Appears
    Enter Note Title    a
    Enter Note Body     body for a
    Choose Note Category    ${CATEGORY_BUTTON_URGENT}
    Press Save Note Button
    Verify Note Is Listed    a

Should display the content of the note when clicked
    [Tags]    createNote    mainPage    positive
    Display a note    a
    Page Should Contain Text    body for a