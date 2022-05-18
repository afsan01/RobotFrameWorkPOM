*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locator.py

*** Keywords ***
Open my browser
    [Arguments]    ${SitURL}    ${Browser}
    open browser    ${SitURL}   ${Browser}
    maximize browser window

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_LoginEmail}    ${username}

Enter Password
    [Arguments]    ${password}
    input text     ${txt_LoginPassword}      ${password}

Click Login
    click button    ${btnLogin}

Verify Error message
    page should contain    The password you’ve entered is incorrect.

Close my Browsers
    close all browsers