*** Settings ***
Documentation           New test suite
Library                 QForce 
Library    Collections
Library    QWeb

*** Variables ***
${Accessibility}    Accessibility

*** Keywords ***
Validate Footer Links
    @{Footer_LINKS}=    Create List
    ...    Accessibility
    ...    Terms & Conditions
    ...    Regulation
    ...    Privacy
    ...    Security
    ...    Sitemap
    ...    Do Not Sell My Personal Information

    LogScreenshot    fullpage=true

    FOR    ${link}    IN    @{Footer_LINKS}
        ClickText    ${link}
        Sleep        1

        ${page_is_ok}=    Run Keyword And Return Status    VerifyNoText    Page Not Found
        LogScreenshot    fullpage=true

        IF    not ${page_is_ok}
            Run Keyword And Continue On Failure    Fail
            ...    FAILED: Footer "${link}" redirects to a page containing "Page Not Found"
        END

        CloseOthers
            END





