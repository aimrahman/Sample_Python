*** Settings ***
Variables    load_properties.py
Library    SeleniumLibrary

*** Variables ***
${TESTNAME}    load_properties.py

*** Test Cases ***
Example Test
    Sleep    time_=10s
    Open Browser    url    browser
    Delete All Cookies
    Maximize Browser Window
    Close Browser

