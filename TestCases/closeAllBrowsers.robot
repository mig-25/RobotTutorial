*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}  http://demowebshop.tricentis.com/register
${url2}  http://automationpractice.com/index.php

*** Test Cases ***
shutBrowsers
    open browser    ${url1}
    open browser    ${url2}

    close browser   #Close the last open browser

    close all browsers  #Closes all browsers


*** Keywords ***