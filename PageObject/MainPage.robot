
*** Settings ***
Documentation     MainPage
Library   SeleniumLibrary
Resource  init.robot
Variables   ../PythonFunctions/main.py

*** Keyword ***

GotoUrl  
   [Arguments]  ${browser}
    navigate   ${browser}
    Maximize Browser Window

Accept cookie
     [Arguments]  ${locator-cookie}  ${locator-accept-cookie}
    Wait Until Element Is Visible  ${locator-cookie} 
    Click Element   ${locator-accept-cookie}
