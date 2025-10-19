*** Settings ***
Documentation  Main page element locators  
...    
...    The strategy for the ids are accessibility id, preferred for cross-platform
*** Variables ***
${ADD_NOTE_BUTTON}    accessibility_id=Add note
${NOTE_TITLE_INPUT}    accessibility_id=Note title input
${NOTE_CONTENT_INPUT}    accessibility_id=Note content input
${CATEGORY_BUTTON_NORMAL}    accessibility_id=Select Normal category
${CATEGORY_BUTTON_URGENT}    accessibility_id=Select Urgent category
${CATEGORY_BUTTON_IMPORTANT}    accessibility_id=Select Important category
${SAVE_NOTE_BUTTON}    accessibility_id=SAVE
${CANCEL_NOTE_BUTTON}    accessibility_id=CANCEL
${DELETE_NOTE_BUTTON}    accessibility_id=DELETE
${COLOR_NORMAL_HEX}           FFFFFF
${COLOR_URGENT_HEX}           FF6B6B
${COLOR_IMPORTANT_HEX}        FFD700