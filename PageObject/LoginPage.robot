
*** Settings ***
Documentation     LoginPage
Library   SeleniumLibrary
Resource  init.robot
Resource  MainPage.robot

*** Variables ***
${locator-compte}   xpath://*[@id="data-account"]
${accept-cookie}  onetrust-accept-btn-handler
${locator-meconnecter}   xpath://*[@id="headerAccountPanel"]/div/div/ul/li[1]/a
${locator-user}    xpath://*[@id="idToken1"]
${locator-pass}    xpath://*[@id="idToken2"]
${locator-submit}   xpath://*[@id="loginButton_0"]
${locator-account}    //*[@id="data-account"]/span[2]/span

*** Keyword ***
Login
      [Arguments]  ${user}  ${pwd}

    GotoUrl   ${browser}    
    Accept cookie   ${accept-cookie}
    Click compte  ${locator-compte}   ${locator-compte}
    Click me connecter   ${locator-meconnecter}
    Enter Username    ${locator-user}    ${user}
    Enter Password    ${locator-pass}    ${pwd}
    Click Submit  ${locator-submit}
    Verify Page Contain  ${locator-account}
    Close All Browsers


Click compte
  [Arguments]   ${locator-compte}   ${locator-compte}
    Wait Until Element Is Visible  ${locator-compte}  5s
    Click Element   ${locator-compte}

Click me connecter
  [Arguments]   ${locator-meconnecter}
    Wait Until Element Is Visible  ${locator-meconnecter}  5s
    Click Link	 ${locator-meconnecter}

Enter Username
  [Arguments]  ${locator-user}  ${user}
    Wait Until Element Is Visible  ${locator-user}  10s
    Input Text    ${locator-user}    ${user}

Enter Password
  [Arguments]   ${locator-pass}  ${pwd}
    Wait Until Element Is Visible  ${locator-pass}   10s
    Input Text    ${locator-pass}    ${pwd}

Click Submit
   [Arguments]   ${locator-submit} 
    Wait Until Element Is Visible  ${locator-submit}  10s
    Click Element   ${locator-submit}

Verify Page Contain
  [Arguments]   ${locator-account}
    Wait Until Element Is Visible  ${locator-account}  10s
    Page Should Contain Element  ${locator-account}