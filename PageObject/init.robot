*** Settings ***
Documentation     init resource
Library   SeleniumLibrary
Variables  ../PageObject/Data/jeu_de_donnees.py
#Test Teardown  Close All Browsers  #After

*** Variables ***
${MESSAGE}        Hello world MD!
${BROWSER}        Chrome
${message}   All is OK

*** Keyword ***
navigate
        [Arguments]   ${BROWSER}
         Open Browser  ${Host}  ${BROWSER}
        [Return]   ${message}
getLogin
         ${LOGIN URL}
getBrowser
         ${BROWSER}
getHost
         ${HOST}


  