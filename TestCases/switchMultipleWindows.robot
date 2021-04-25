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
    sleep    3
    open browser    ${url2}

    switch browser    1
    ${title1}   get title
    log to console    ${title1}

    switch browser    2
    ${title2}   get title
    log to console    ${title2}

    sleep    3



