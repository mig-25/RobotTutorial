*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Testing Frames
    open browser    ${url}

    TestingFrames

    sleep    2

    close browser

*** Keywords ***
TestingFrames
    select frame    packageListFrame    #du kan specifiera id, name or xpath
    click link      org.openqa.selenium
    unselect frame
    sleep    3

    select frame    packageFrame
    click link      WebDriver
    unselect frame
    sleep    3

    select frame    classFrame
    click link      Help
    unselect frame


