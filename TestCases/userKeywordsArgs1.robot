*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${userName}  mercury
${password}    mercury


*** Test Cases ***
TestKeywords
    keywordsArguments   ${userName}     ${password}

    close browser

*** Keywords ***

keywordsArguments
    [Arguments]    ${appUserName}  ${appPassword}
    open browser    ${url}
    input text    name:userName     ${appUserName}
    input text    name:password    ${appPassword}

    sleep    3

