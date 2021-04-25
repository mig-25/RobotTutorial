*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://syne19-portfolio-test.netlify.app/


*** Test Cases ***
ScrollTest

    open browser    ${url}
    scrollteststeps

    close browser


*** Keywords ***
ScrollTestSteps
    #execute javascript    window.scrollTo(0,800)

    #scroll element into view    xpath://section[@class='section jobs']

    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)

    sleep   3
