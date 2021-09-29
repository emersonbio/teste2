*** Settings ***
Library        SeleniumLibrary


*** Variables ***

${BROWSER}        chrome  
${URL}            http://www.practiceselenium.com/practice-form.html
    

*** Test Cases ***

test: 01
    Open Browser  ${URL}  ${BROWSER}
    maximize browser window
    Select From List By Index  name=continents   3
    sleep  10
    Close Browser