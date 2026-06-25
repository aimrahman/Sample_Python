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
    Click Element    Xpath=//span[normalize-space()='My Account']
    Click Element    Xpath=//ul[@class='dropdown-menu dropdown-menu-right']//a[normalize-space()='Register']
    Sleep    time_=10s
    Input Text    Xpath=//input[@id='input-firstname']    surendra
    Input Text    Xpath=//input[@id='input-lastname']    venkat
    Input Text    Xpath=//input[@id='input-email']    abcdef12345@gmail.com
    Input Text    Xpath=//input[@id='input-telephone']    0123456789
    Input Text    Xpath=//input[@id='input-password']    testing
    Input Text    Xpath=//input[@id='input-confirm']    testing
    Click Element    Xpath=//label[normalize-space()='Yes']
    Select Checkbox    Xpath=//input[@name='agree']
    Click Button    Xpath=//input[@value='Continue']
    
