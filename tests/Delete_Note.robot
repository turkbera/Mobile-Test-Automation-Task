*** Settings ***
Documentation    Test suite for deleting note 
...    Verifies:
...    - Addition of a new note
...    - Note correctly listed with the given title
...    - When deleted it disappears from the list
Resource     ../resources/keywords/MainPageKeywords.robot
Resource     ../resources/base/BasePage.robot
Test Setup    Open Main Page
Test Teardown  Close Application
*** Test Cases ***

Should delete a note and verifies it is not listed
    [Documentation]    Performs and verifies note addition and deletion.
    [Tags]    deleteNote    mainPage    positive
    Press Add Note Button
    Verify Note Modal Appears
    Enter Note Title    x
    Press Save Note Button
    Verify Note Is Listed    x
    Delete A Note    x
    Verify A Note Is Deleted    x


    