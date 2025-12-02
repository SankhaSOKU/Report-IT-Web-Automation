*** Settings ***
Documentation           New test suite
Library                 QForce 
Suite Setup             Open Browser    browser_alias=chrome    url=https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
Suite Teardown          Close All Browsers
Library    Collections
Library    QWeb

*** Keywords ***
    GoTo            https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
    Sleep           2
    ClickElement    xpath=//*[@id="navigation-707b42fe68"]/ul/li/ul/li[4]/a
    Sleep           1
    LogScreenshot    fullpage=true
    ClickText       No, I want to report a safety issue
    LogScreenshot    fullpage=true
    Sleep            2
    VerifyElement    xpath=//h1[contains(text(),"How it works")]    
    LogScreenshot    fullpage=true
    