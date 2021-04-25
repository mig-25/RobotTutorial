*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
ExtractLinks
    alllinks
    #LoopWithList

    close browser


*** Keywords ***
allLinks
    open browser    ${url}

    ${allLinksCount}    get element count    xpath://a
    log to console  ${allLinksCount}


    FOR     ${i}     IN RANGE   1     ${allLinksCount}

    ${linkText}     get text    xpath:(//a)[${i}]

    log to console    ${linkText}

    END
LoopWithList
    open browser    ${url}
    ${allLinksCount}    get element count    xpath://a
    log to console  ${allLinksCount}

    @{linkItems}  create list   ${allLinksCount}
    FOR     ${allLinksCount}     IN  @{linkItems}
    log to console    ${allLinksCount}
    END


