*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://syne19-portfolio-test.netlify.app/

*** Test Cases ***
TestingInputBox
    open browser    ${url}
    TextFieldCheck
    close browser

*** Keywords ***
TextFieldCheck
    maximize browser window
    title should be    Hem | WebDev Portfolio
    click link    xpath://a[@class='btn']
    ${email_txt}  set variable    xpath://input[@type='email']

    element should be visible    ${email_txt}
    #element should not be visible   ${email_txt}

    element should be enabled    ${email_txt}

    input text    ${email_txt}    kd3180@hotmail.com
    sleep    5

    clear element text    ${email_txt}
    sleep    3

