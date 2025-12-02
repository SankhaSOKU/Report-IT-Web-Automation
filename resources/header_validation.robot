*** Settings ***

Documentation           New test suite
Library                 QForce 
Library    Collections
Library    QWeb

*** Variables ***
#all object should be place before keywords (object class with function)
${pgeLogo}    (//img[@class="cmp-image__image"])


*** Keywords ***



Verify the header logo
    VerifyElement    ${pgeLogo}

*** Keywords ***

*** Keywords ***
Validate Header Links
    @{HEADER_LINKS}=    Create List
    ...    Home
    ...    My reports
    ...    All reports
    ...    Report a safety issue
    ...    About the Report It program

    LogScreenshot    fullpage=true

    FOR    ${link}    IN    @{HEADER_LINKS}
        ClickText    ${link}
        Sleep        1

        ${page_is_ok}=    Run Keyword And Return Status    VerifyNoText    Page Not Found
        LogScreenshot    fullpage=true

        IF    not ${page_is_ok}
            Run Keyword And Continue On Failure    Fail
            ...    FAILED: Header "${link}" redirects to a page containing "Page Not Found"
        END

        CloseOthers
            END





