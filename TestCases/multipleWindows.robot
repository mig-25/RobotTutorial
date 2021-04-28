*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedWindowsTest
    open browser    ${url}
    Multipe Windows

    #stänger alla test fönster
    close all browsers


*** Keywords ***
Multipe windows
    click element    xpath:/html/body/div[1]/div/div/div/div[2]/div[1]/a/button
    switch window    title=SeleniumHQ Browser Automation
    click element    xpath://a[contains(text(),'Downloads')]

    click link    xpath://a[contains(text(),'Firefox')]

    sleep   3