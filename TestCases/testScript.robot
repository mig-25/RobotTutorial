*** Settings ***
Documentation     A test suite with a single test for Hem | WebDev Portfolio
...               Created by hats' Robotcorder
Library    SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Hem | WebDev Portfolio test
    Open Browser    https://syne19-portfolio-test.netlify.app/    ${BROWSER}
    Click Link    //a[@href="/contact"]
    Input Text    //input[@name="name"]    sohail hasware
    Input Text    //input[@name="email"]    kd3180@hotmail.com
    Input Text    //textarea[@name="message"]    Testing
    Click Element    //button[@class="submit-btn btn"]

    Close Browser