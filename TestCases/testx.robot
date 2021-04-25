*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestX
    open browser    ${url}
    click link    xpath://a[@class='ico-login']