*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}     http://testautomationpractice.blogspot.com/
${url3}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
MouseActions
    rightClickAction
    doubleclickaction
    drapdropaction
    close all browsers


*** Keywords ***
rightClickAction
    open browser    ${url1}

    # right-click mouse action
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']

    sleep    3

doubleClickAction
    open browser    ${url2}

    # double click action
    double click element    xpath://button[contains(text(), 'Copy Text')]

    sleep    3

drapDropAction
    open browser    ${url3}

    # drag and drop from source id to target id
    drag and drop    id:box2    id:box102

    sleep    3

