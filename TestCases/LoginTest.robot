*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${Siteurl}  https://www.facebook.com/
${user}     mahbub@gmail.com
${pwd}      test123

*** Test Cases ***
LoginTest
    Open my browser    ${Siteurl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click Login
    sleep    5
    Verify Error message
    close all browsers