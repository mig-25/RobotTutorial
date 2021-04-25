*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${loginUrl}  https://admin-demo.nopcommerce.com/login

*** Keywords ***
Open my Browser
    open browser    ${loginUrl}

Close Browsers
    close all browsers

Open Login Page
    go to    ${loginUrl}

Input username
    [Arguments]    ${username}
    input text    id:Email  ${username}

Input pwd
    [Arguments]    ${password}
    input text    id:Password   ${password}

Click Login Button
    click element    xpath://button[@type='submit']

Click Logout Button
    click link    Logout

#--------- Validations -----------#

Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashboard

