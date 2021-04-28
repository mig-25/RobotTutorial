*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${userName}  mercury
${password}    mercury



*** Test Cases ***
TestKeywords
    simpleKeyword

    close browser

*** Keywords ***
simpleKeyword
    open browser    ${url}
    input text    name:userName     ${userName}
    input text    name:password    ${password}

    sleep    3

