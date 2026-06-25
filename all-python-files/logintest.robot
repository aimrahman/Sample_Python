*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://tutorialsninja.com/demo
${browser}    chrome

*** Test Cases ***
Open My Chrome Browser
    Open Browser   ${url}    ${browser}
    Delete All Cookies
    Maximize Browser Window
    Sleep    time_=10s
    #Wait Until Page Contains Element    Xpath=//a[normalize-space()='MacBook']    timeout=15s
    Click Element    Xpath=//span[normalize-space()='My Account']
    Click Link    Xpath=//a[normalize-space()='Login']
    #Set Browser Implicit Wait  
    Wait Until Page Contains Element    Xpath=//h2[normalize-space()='New Customer']    timeout=10s
    Input Text    Xpath=//input[@id='input-email']    testingtesting@gmail.com
    Input Text    Xpath=//input[@id='input-password']    testing
    Wait Until Page Contains    text=I am a returning customer    timeout=10s
    Click Element    Xpath=//input[@value='Login']
    #Wait Until Page Contains Element    Xpath=//h2[normalize-space()='My Account'] timeout=5s
    #Wait Until Element Contains    Xpath=//h2[normalize-space()='Welcome to our store']    timeout=10s
    Click Link    //a[@class='list-group-item'][normalize-space()='Logout']
    Close Browser


*** Keywords ***

    
