*** Settings ***
Documentation  Commonly used keywords across all automation
Library    AppiumLibrary
Resource   ../../configs/TakeNoteAppConfigs.env.robot

*** Keywords ***
Open Take Note App
    Open Application    ${APPIUM_URL}  platformName=${ANDROID_PLATFORM_NAME}  deviceName=${ANDROID_DEVICE_NAME}  appPackage=${ANDROID_APP_PACKAGE}  appActivity=${ANDROID_ACTIVITY_NAME}  automationName=${ANDROID_AUTOMATION_NAME}

Click Element When Visible
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Input Text When Visible
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${text}
