*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Resource          resource.robot
Default Tags      positive

*** Test Cases ***
Valid To Do List
    Open Browser To To Do List Page
    Input AddItem               demo
    Submit Credentials
    To Do List Page 
    Completed Page 
    [Teardown]    Close Browser



