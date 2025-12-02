*** Settings ***
Documentation           New test suite
Library                 QForce 
Suite Setup             Open Browser    browser_alias=chrome    url=https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
Suite Teardown          Close All Browsers
Library    Collections
Library    QWeb

*** Keywords ***

My reports header Validation
    GoTo            https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
    Sleep           2
    ClickElement    xpath=//a[@aria-label="My reports"]
    Sleep           2
    TypeText        Email    soku@pge.com
    LogScreenshot            fullpage=true
    ClickText       See my reports
    Sleep           2
    ClickElement    xpath=//*[@id="my-reported-cases"]/div[1]/div/div[1]/span[2]/span[1]/a
    LogScreenshot            fullpage=true

    
