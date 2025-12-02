*** Settings ***
Documentation           New test suite
Library                 QForce 
Suite Setup             Open Browser    browser_alias=chrome    url=https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html
Suite Teardown          Close All Browsers
Library    Collections
Library    QWeb
Resource    ../Common_Issue_location.robot

*** Keywords ***

TC02_powerpole_burned
    Common step until issue location
    ClickElement    //*[@id="rptTypeId-powerPole"]/span[2]/h2    #or clickText powerpole if not work
    Sleep    2
    ClickText       Next
    Sleep           2
    LogScreenshot                        fullpage=true
    ClickElement    xpath=//*[@id="damageTypeCardsContainer"]/div/div[1]/button[2]/span[1]/span/img
    ClickText       Next
    Sleep           2
    LogScreenshot                        fullpage=true
    ClickText       Next
    Sleep           2
    LogScreenshot                        fullpage=true
    ClickText       Next
    
    #attach media page
    UploadFile      locator=//input[@id="photoDistance"]    file=C:\Users\soku\OneDrive - PGE\Desktop\Report IT\Dataset\Image dataset\JPG\1.1-MB-1.jpg
    Sleep    3
    UploadFile      locator=//input[@id="photoCloseUp"]     file=C:\Users\soku\OneDrive - PGE\Desktop\Report IT\Dataset\Image dataset\JPG\6.1-MB.jpg
    Sleep    3 
    TypeText        locator=//textarea[@id="attachMediaDescription"]    text=Hi this is a test description from CRT soku 1234
    LogScreenshot                        fullpage=true
    clickText       Next
    LogScreenshot   fullpage=true
