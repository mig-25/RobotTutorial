*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${userName}  mercury
${password}    mercury


*** Test Cases ***
TestKeywords
    ${pageTitle}    keywordsArguments   ${userName}     ${password}
    log to console    ${pageTitle}
    log    ${pageTitle}

    close browser

*** Keywords ***

keywordsArguments
    [Arguments]    ${appUserName}  ${appPassword}
    open browser    ${url}
    input text    name:userName     ${appUserName}
    input text    name:password    ${appPassword}

    ${title}    get title
    [Return]    ${title}

    sleep    3

