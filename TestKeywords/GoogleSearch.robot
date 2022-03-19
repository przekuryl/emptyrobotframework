*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH QUERY}     dupa
${URL}          https://www.google.com/
${BROWSER}      Chrome

*** Keywords ***

Open main page google
    Open browser    ${URL}      ${BROWSER}
    Title Should Be    Google

Search for item
    [Arguments]    ${SEARCH QUERY}
    Input Text	class=gLFyf     ${SEARCH QUERY}
    click button    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

Accept cookies
    click button    id=L2AGLb