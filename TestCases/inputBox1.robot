*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}
    TextFieldCheck
    close browser

*** Keywords ***
TextFieldCheck
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${email_txt}  set variable    xpath://input[@id='Email']

    element should be visible    ${email_txt}
    #element should not be visible   ${email_txt}

    element should be enabled    ${email_txt}

    input text    ${email_txt}    kd3180@hotmail.com
    sleep    5

    clear element text    ${email_txt}
    sleep    3

