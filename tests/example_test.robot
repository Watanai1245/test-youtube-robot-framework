*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${URL}            https://www.youtube.com
${BROWSER}        Chrome

*** Test Cases ***
Check YouTube Title
    Title Should Be    YouTube

Search On YouTube
    Input Text    name=search_query    Robot Framework
    Click Button    id=search-icon-legacy
    Wait Until Page Contains Element    xpath=//a[contains(@title, "Robot Framework")]