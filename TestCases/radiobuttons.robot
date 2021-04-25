*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}
    #maximize browser window

    set selenium speed    1seconds

    RadiobuttonsTest
    CheckboxTest

    close browser


*** Keywords ***
RadiobuttonsTest
     # Selcting Radio buttons, pass in the name of radio button and value
    select radio button    sex  Female
    select radio button    exp  5

CheckboxTest
    # Selcting Check buttons, pass in the name or id of radio button
     select checkbox    BlackTea
     select checkbox    RedTea

     unselect checkbox    BlackTea