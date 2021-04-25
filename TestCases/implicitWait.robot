*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest

    open browser    ${url}
    maximize browser window

    # skapa en variabel för att mäta default tiden på selenium implicit wait
    ${implicitWait}     get selenium implicit wait
    log to console    ${implicitWait}

    # Vi använder selenium implicit wait för att vänta in en kontroll,
    # enbart element som den hittar kommer den vänta på till den utsatta tiden
    # alla andra element, om dem hittas utförs omedelbart
    set selenium implicit wait  10 seconds

    ${implicitWait}     get selenium implicit wait
    log to console    ${implicitWait}

    SelectGender

    close browser

*** Keywords ***
SelectGender
    sleep    3

    select radio button     Gender      M
    input text    name:FirstName        Kalle
    # skriv in ett medvetet fel, name:LastName1 ska egentligen vara name:LastName
    input text    name:LastName1         Anka
    select radio button     Gender      M
    input text    name:Email            kalle.anka@ankeborg.se
    input text    name:Password         kalle
    input text    name:ConfirmPassword      kallea

    #sleep   5 seconds


