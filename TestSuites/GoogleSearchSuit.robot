*** Settings ***
Library  SeleniumLibrary
Library  ../Resources/Generator.py
Resource  ../TestKeywords/GoogleSearch.robot


*** Test Cases ***
Search some in google
    Open main page google
    Accept cookies
    @{list}=  Generate names  10
    FOR    ${item}    IN    @{list}
        Search for item  ${item}
        Sleep   3s
        Go back
    END
    Sleep  5s
    [Teardown]    Close Browser


