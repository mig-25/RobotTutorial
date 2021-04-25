*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
CaptureScreen
    screencapture

    close browser

*** Keywords ***
screenCapture
    open browser    ${url}
    input text  id:txtUsername  Admin
    input text    id:txtPassword    admin123

    capture element screenshot    xpath://img[@src='/webres_5fee89a90600f2.94309009/themes/default/images/login/logo.png']  logo.png
    capture page screenshot    login.png

    sleep    3