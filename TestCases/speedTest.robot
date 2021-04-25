*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest

    # This will output the standared selenium speed and then log it
    ${speed}    get selenium speed
    log to console    ${speed}
    open browser    ${url}

    # Only the first control will wait for 2 seconds
    #sleep    2

    #this will set all controls to have the default to 2 seconds
    set selenium speed    2 seconds


    SelectGender
    # This should now show 2 seconds instead of 0
    ${speed}    get selenium speed
    log to console    ${speed}

    close browser

*** Keywords ***
SelectGender
    select radio button     Gender      M
    input text    name:FirstName        Kalle
    input text    name:LastName         Anka
    input text    name:Email            kalle.anka@ankeborg.se
    input text    name:Password         kalle
    input text    name:ConfirmPassword      kallea


