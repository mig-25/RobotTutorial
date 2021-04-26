*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  headless    Firefox
${url}  http://testautomationpractice.blogspot.com

*** Test Cases ***
Handling Alerts
    open browser    ${url}  ${browser}
    TestHandleAlert

    sleep    2

    close browser




*** Keywords ***
TestHandleAlert
    click element    xpath://button[@onclick='myFunction()']   #opens alert dialogbox

    sleep    3

    handle alert    ACCEPT  #Closes dialog by clicking ok
    #handle alert     DISMISS    #Closes dialog box by clicking cancel
    #handle alert    Leave # Leave the diablog box open

    #alert should be present    Press a button!  #Check for text in dialog box

    #alert should not be present    Press a button!

    #alert should not be present    Yeaahhh!     #Passing test, Check for text not be present in dialog box


