*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://syne19-portfolio-test.netlify.app/

*** Test Cases ***
SendEmail

    #open browser    https://syne19-portfolio-test.netlify.app/     chrome
    open browser    ${url}
    submitForm
    #capture element screenshot    xpath://form[@action='https://formspree.io/your_formspree_code']    form.png
    #capture page screenshot    page.png
    close browser




*** Keywords ***
submitForm
    click link    xpath://a[@class='btn']
    input text    name:name     Sohail Hasware
    input text    name:email     kd3180@hotmail.com
    input text    name:message     testing message 2
    click element   xpath://button[@type='submit']