
*** Settings ***
Documentation                New test suite
Library                      Collections
Library                      QWeb
Resource                     ../resources/utils.robot
Resource                     ../resources/header_validation.robot
Resource                     ../resources/Footer_Validation.robot
Resource                     ../resources/Power Pole/ReportIssue_power pole_leaning.robot


*** Variables ***
${pgeLogo}                   (//img[@class="cmp-image__image"])

*** Test Cases ***

TC01-Verify the header logo
    Open ReportITPortal
    VerifyElement            ${pgeLogo}
    #test validaiton


TC02-Validate header links
    Open ReportITPortal
    Validate header links

TC03-Validate footer links
    Open ReportITPortal
    Validate Footer Links

TC04-power pole leaning Validation
    Open ReportITPortal
    TC01_Powerpole leaning


