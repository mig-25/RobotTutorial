*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources1.robot


*** Variables ***

*** Test Cases ***
TestKeywords
    ${pageTitle}    keywordsArguments   ${userName}     ${password}
    log to console    ${pageTitle}
    log    ${pageTitle}

    close browser

*** Keywords ***



