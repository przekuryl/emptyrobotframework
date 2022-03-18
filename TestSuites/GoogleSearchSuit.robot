*** Settings ***
Library  SeleniumLibrary
Resource  ../TestKeywords/GoogleSearch.robot


*** Test Cases ***
Search text in google
    Open main page google
    Accept cookies
    Search for item
    Sleep   5s
    [Teardown]    Close Browser


