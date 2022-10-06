
*** Settings ***
Documentation     Scenari des tests de recherche sur l'application carrefour : 
Library   SeleniumLibrary
Resource  ../PageObject/HomePage.robot
Variables  ../PageObject/Data/jeu_de_donnees.py

*** Test Cases ***
Scenario 1 : Recherche la premiere moutarde sur carrefour  
      Recherche la premiere moutarde sur carrefour   ${Host}  ${Navigateur}  ${dataset_keyWord}
      Close All Browsers
Scenario 2 : Recherche la premiere moutarde sur carrefour en detail implementation (sequence)
      Navigate on url    ${Navigateur}
      Accept cookie   ${locator-accept-cookie}
      SearchBar by keyword  ${locator-searchbar}   ${dataset_keyWord}  ${locator-button-searchbar}
      Close All Browsers