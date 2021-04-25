*** Settings ***



*** Variables ***



*** Test Cases ***
# We want to only run sanity test
# Run with following command:
# robot --include=sanity TestCases\tagging.robot

# We want to run multiple test with different tags
# Run with following command:
# robot -i sanity -i security TestCases\tagging.robot

# We want to run all test but exclude one tag, exculde security
# Run with following command:
# robot -e security TestCases\tagging.robot

TC1 User registration test
    [Tags]    security
    log to console    This is user registration test
    log to console    User registration test is over

TC2 Login test
    [Tags]    sanity
    log to console    This is login test
    log to console    Login test is over

TC3 Change user settings
    [Tags]    regression
    log to console    This is changing user settings test
    log to console    Change user settings test is over

TC4 Logout test
    [Tags]    sanity
    log to console    This is logout test
    log to console    Logout test is over


*** Keywords ***
