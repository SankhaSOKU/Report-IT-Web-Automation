*** Settings ***
Documentation           New test suite
Library                 QForce 
Suite Setup             Open Browser    browser_alias=chrome    url=https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
Suite Teardown          Close All Browsers
Library    Collections
Library    QWeb

*** Keywords ***
Common step until issue location
    GoTo    https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
    Sleep    2
    ClickElement    //a[@aria-label="Report a safety issue"]
    Sleep    2
    LogScreenshot    fullpage=true
    ClickText       No, I want to report a safety issue
    Sleep    2
    LogScreenshot    fullpage=true
    ClickText       Get started
    Sleep    2
    TypeText        Email    soku@pge.com
    ClickElement    //select[@name="user-type-dropdown"]
    ClickText       index=1
    Sleep           3
    ClickText       Got it
    Sleep    2
    TypeText        Search by address    123 Lakeside Dr
    PressKey        key=ENTER            locator=//input[@id="reportIt-addrText"]
    ClickText       Yes, Proceed
    Sleep    2
    ClickText       Next

PhotoGuidelines steps

    ClickText    Report a safety issue
    ClickText    Report a safety issue
    ClickText    Home    anchor=My reports
    Sleep            2
    clickText        Next
    LogScreenshot    fullpage=true
    Sleep            2
    clickText        Next
    LogScreenshot    fullpage=true
