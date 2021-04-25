*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  http://testautomationpractice.blogspot.com/


*** Test Cases ***
TableValidations
    open browser    ${url}
    tblSteps
    close browser


*** Keywords ***
tblSteps
    #how many rows in the table, all table rows tr
    ${rows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    log to console    ${rows}


    #how many columns in the table, choose first row with indexnr 1, then table heading th
    ${col}     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console    ${col}

    #capture data on specific row and specific column, find string of "master of selenium" on row 5 and column 1
    ${data}     get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console    ${data}

    #Different type of validations
    # Check if column nr 2 contains string of "Author", could be in any column 2
    table column should contain    xpath://table[@name='BookTable']     2   Author

    # Check if row 4 contains string of "Learn JS", could be in any row 4
    table row should contain    xpath://table[@name='BookTable']    4   Learn JS

    # Check specific row data
    # 5:th, 2:nd column should contain the string "Mukesh"
    table cell should contain    xpath://table[@name='BookTable']   5   2   Mukesh

    # Table header should contain BookName
    table header should contain    xpath://table[@name='BookTable']     BookName

