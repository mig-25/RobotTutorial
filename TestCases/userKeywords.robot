*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://syne19-portfolio-test.netlify.app/
${user}  Sohail Hasware
${email}    kd3180@hotmail.com
${message}  testing message X



*** Test Cases ***
TestKeywords
    simpleKeyword

    close browser

*** Keywords ***
simpleKeyword
    open browser    ${url}
    click link    xpath://a[@class='btn']
    input text    name:name     ${user}
    input text    name:email    ${email}
    input text    name:message  ${message}

    sleep    3

