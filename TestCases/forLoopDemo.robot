*** Settings ***



*** Variables ***
# List variabel, one variable/collection contains all the values
@{ROBOTS}        Bender    Johnny5    Terminator    Robocop


*** Test Cases ***
ForLoop
    Loop
    LoopWithList





*** Keywords ***
Loop
    FOR     ${i}    IN RANGE   1   11
    LOG TO CONSOLE    ${i}
    END

LoopWithList
    FOR     ${robot}    IN  @{ROBOTS}
        # Skipping one value
        #Continue For Loop If    $robot == 'Terminator'
        # Break loop if value found
        #Exit For Loop If    $robot == 'Johnny5'
        Log To Console    ${robot}
    END


