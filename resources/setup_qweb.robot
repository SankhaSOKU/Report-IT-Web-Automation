*** Settings ***
Library                         QVision
Library                         QWeb
Library                         String

*** Keywords ***
Setup Browser
    Set Library Search Order    QWeb              QForce
    Evaluate                    random.seed()     random
    Open Browser                about:blank       ${BROWSER}
    DeleteAllCookies
    SetConfig                   LineBreak         ${EMPTY}      #\ue000
    SetConfig                   DefaultTimeout    20s
    SetConfig                   ShadowDOM         True
    Set Global Variable         ${os}             des

Capture Screenshot
    LogScreenshot               fullpage=false
