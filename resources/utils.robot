*** Settings ***
Resource                        ${setuplib}
Library                         QForce
Library                         String
Library                         QWeb
Library                         Collections
Library                         QVision
Library                         DateTime
Library                         ../library/QForceACN.py

*** Variables ***
${New_Payment}                  (//input[@placeholder\="All payments tasks" and @role\="combobox"])




#Ot-401/402/406

#random numbergenerator
${NUMBER}=                      123456789
${SPECIAL_CHARACTER}=           !@$%^&*";.,?/"
${LETTERS}                      abcdefygh
${CAPITAL_LETTERS}              ABCDEFGHIJKLMNOPQRSTUVWXYZ

*** Keywords ***

Open ReportITPortal
    open browser    ${URL}    ${BROWSER}

End suite
    Capture Screenshot
    Close All Browsers

Go To Community Portal
    GoTo                        ${CommunityPortal}
    #VerifyText                  Sign In
    Capture Screenshot

### References for reusable function for report IT.
Click Register
    ClickText                   Register
    VerifyText                  Are you a PG&E Customer?
    Capture Screenshot

Click My Account
    ClickText                   My Account

  Logout of Community Portal
    ClickElement                (//a[@class\='nav-link'])[5]
    ClickText                   Log Out
