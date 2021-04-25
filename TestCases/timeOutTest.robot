*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest

    open browser    ${url}
    maximize browser window

    ${time}     get selenium timeout
    log to console    ${time}

    # Check if the page contains the string of Register
    # default time for wait is 5 seconds
    # wait until page contains    Hello

    set selenium timeout    10 seconds
    wait until page contains    Register

    ${time}     get selenium timeout
    log to console    ${time}

    SelectGender

    close browser

*** Keywords ***
SelectGender
    sleep    3
    select radio button     Gender      M
    input text    name:FirstName        Kalle
    input text    name:LastName         Anka
    input text    name:Email            kalle.anka@ankeborg.se
    input text    name:Password         kalle
    input text    name:ConfirmPassword      kallea

    sleep   5 seconds


