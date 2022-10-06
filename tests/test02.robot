
*** Settings ***
Documentation     Scenari des tests de login sur l'application carrefour : 
Library   SeleniumLibrary
Resource  ../PageObject/LoginPage.robot
Library   ../PythonFunctions/function1.py
Variables   ../PythonFunctions/login.py

*** Test Cases ***
Scenario 1 : Login sur carrefour  
            Login  ${user}  ${pwd}
            Close All Browsers
Scenario 2 : Login en detail sur carrefour
            GotoUrl   ${browser}    
            Accept cookie    ${accept-cookie}
            Click compte  ${locator-compte}   ${locator-compte}
            Click me connecter   ${locator-meconnecter}
            Enter Username    ${locator-user}    ${user}
            Enter Password    ${locator-pass}    ${pwd}
            Click Submit  ${locator-submit}
            Verify Page Contain  ${locator-account}
            Close All Browsers