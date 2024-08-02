*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Library           Selenium2Library

*** Variables ***
${SERVER}         https://abhigyank.github.io/To-Do-List/
${BROWSER}        chrome
${DELAY}          1
${LOGIN URL}      https://${SERVER}/
${TODOTasks URL}    https://${SERVER}/TODOTasks.html
${COMPLETED URL}      https://${SERVER}/COMPLETED.html

*** Keywords ***
Open Browser To To Do List Page
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Maximize Browser Window
    To Do List Page Should Be Open 
    

To Do List Page Should Be Open 
    Title Should Be     To Do List Page

To Do List Page
    GO TO          ${LOGIN URL}
    To Do List Page Should Be Open 

Input AddItem
    [Arguments]    ${addItem}
    Input Text     addItem_field    ${addItem}

Submit Credentials
    Click Button           ToDoList_button

Welcome Page Should Be Open
    To Do List Page        ${TODOTasks URL}
    If ${Checkbox} = Page should Contain COMPLETED      id:demo
    else {Delete_button} = delete
    Title Should Be     To Do List Page

Delete Credentials
Delete Button           Delete_button

Completed Page 
    Location Should Be     ${COMPLETED URL}
    Title Should Be          COMPLETED Page






