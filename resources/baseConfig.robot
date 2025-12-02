*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome
${Base_URL}    https://tst4.pge.com/en/outages-and-safety/outage-preparedness-and-support/general-outage-resources/report-it-map.html

*** Keywords ***
Open Browser
   GoTo    ${Base_URL}
   Maximize Browser Window

Close Browser
    Close All Browsers