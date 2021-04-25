*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}  https://www.saab.com/products/air
${url2}  https://www.saab.com/products/naval

*** Test Cases ***
TestingMultipleWindows
    MultipleWindows
    close all browsers

*** Keywords ***
MultipleWindows
    open browser    ${url1}
    ${loc}   get location
    log to console    ${loc}

    sleep    3

    go to    ${url2}
    ${loc}   get location
    log to console    ${loc}

    sleep    3

    go back
    ${loc}   get location
    log to console    ${loc}
    sleep    3



