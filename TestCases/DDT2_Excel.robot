*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx  #Sheet name can also be added

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login


*** Variables ***



*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}



*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username     ${username}
    Input pwd   ${password}
    Click Login Button
    Error message should be visible