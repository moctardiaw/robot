*** Settings ***
Documentation     HomePage
Library   SeleniumLibrary
Resource  init.robot
Resource  MainPage.robot
*** Variables ***
${locator-accept-cookie}  onetrust-accept-btn-handler
${locator-searchbar}  xpath://*[@id="search-bar"]/form/div/div[1]/div/input
${locator-button-searchbar}  css:#search-bar > form > div > div.pl-input-text-group__append > button
*** Keyword ***
Recherche la premiere moutarde sur carrefour
    [Arguments]  ${Host}  ${Navigateur}  ${dataset_keyWord} 

    Navigate on url    ${Navigateur}
    Accept cookie    ${locator-accept-cookie}
    SearchBar by keyword  ${locator-searchbar}   ${dataset_keyWord}  ${locator-button-searchbar}

Navigate on url   
   [Arguments]  ${Navigateur}
   navigate   ${Navigateur}
SearchBar by keyword
    [Arguments]  ${locator-searchbar}   ${dataset_keyWord}  ${locator-button-searchbar} 
    Input Text  ${locator-searchbar}  ${dataset_keyWord} 
    Wait Until Element Is Visible  ${locator-button-searchbar} 
    Click Element   ${locator-button-searchbar} 