*** Settings ***
Documentation           New test suite
Library                 QForce 
Suite Teardown          Close All Browsers
Suite Setup             Open Browser    browser_alias=chrome    url=https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
#Suite Teardown          Close All Browsers
Library    Collections
Library    QWeb

*** Variables ***
${login_url}    https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
${browser}    Chrome

*** Keywords ***
TC01_Powerpole leaning
    ClickElement    xpath=//a[@aria-label="Report a safety issue"]
    Sleep    2
    LogScreenshot    fullpage=true
    ClickText       No, I want to report a safety issue
    Sleep    2
    LogScreenshot    fullpage=true
    ClickText       Get started
    Sleep    2
    TypeText        Email    soku@pge.com
    ClickElement    xpath=//select[@name="user-type-dropdown"]
    ClickText       index=1
    Sleep           3
    ClickText       Got it
    Sleep    2
    #issue location page 
    TypeText        Search by address    123 Lakeside Dr
    PressKey        key=ENTER            locator=//input[@id="reportIt-addrText"]
    ClickText       Yes, Proceed
    Sleep    2
    ClickText       Next
    ClickElement    xpath=//*[@id="rptTypeId-powerPole"]/span[2]/h2    #or clickText powerpole if not work
    Sleep    2
    ClickText       Next
    ClickElement    xpath=//*[@id="damageTypeCardsContainer"]/div/div[1]/button[1]/span[1]/span/img
    Sleep    2
    ClickText       Next
    LogScreenshot   fullpage=true
    ClickText       Next
    LogScreenshot   fullpage=true
    #Attach media page
    UploadFile      locator=//input[@id="photoDistance"]    file=C:\Users\soku\OneDrive - PGE\Desktop\Report IT\Dataset\Image dataset\JPG\1.1-MB-1.jpg
    Sleep    3
    UploadFile      locator=//input[@id="photoCloseUp"]     file=C:\Users\soku\OneDrive - PGE\Desktop\Report IT\Dataset\Image dataset\JPG\6.1-MB.jpg
    Sleep    3 
    TypeText        locator=//textarea[@id="attachMediaDescription"]    text=Hi this is a test description from CRT soku 1234
    LogScreenshot                        fullpage=true
    clickText       Next
    LogScreenshot   fullpage=true
                      








