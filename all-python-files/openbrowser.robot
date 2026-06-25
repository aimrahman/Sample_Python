*** Settings ***
Library    SeleniumLibrary

*** Variables ***
  

*** Test Cases ***
Open My Chrome Browser
    Open Browser    https://demo.nopcommerce.com/    Chrome
    Maximize Browser Window
    Delete All Cookies
    #Wait Until Page Contains Element    name=q    timeout=10s
    Close Browser

*** Keywords ***

    
