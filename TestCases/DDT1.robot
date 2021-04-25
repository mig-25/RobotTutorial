*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
# prerequisites for the test before the test is run
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
#Test template to use with DDT
Test Template    Invalid login


*** Variables ***


#*** Test Cases ***      username        password
*** Test Cases ***
# Single test case with multiple sets of data DDT

Right user empty password   admin@yourstore.com   ${EMPTY}    #Global variable EMPTY, no password is provided
Right user wrong password   admin@yourstore.com   xyz
Wrong user right password   admin@yourstore1.com   admin
Wrong user empty password   admin@yourstore1.com   ${EMPTY}
Wrong user wrong password   admin@yourstore1.com   xyz


*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username     ${username}
    Input pwd   ${password}
    Click Login Button
    Error message should be visible