*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Resource    ../Resources/resource1.robot
Library    SeleniumLibrary
Library    SeleniumLibrary
Resource    ../../Resources/resource1.robot
*** Variables ***


*** Test Cases ***
TC_002 Browser Start and Close
    [setup]    Start Browser and Maximize    http://www.thetestingworld.com/testings
    [teardown]    Closed Browser
    [Tags]    smoke
    #log    ${res}
    #[timeout]    20s
    Enter Username Email    TestingWorld    testingworldindia@gmail.com

    select radio button    add_type    office
    select checkbox    name:terms
    select from list by index    name:sex    2
    click link    xpath://a[text()='Read Detail']

*** Keywords ***
Enter Username Email
    [Documentation]    this is keyword releated to registration
    [Arguments]   ${username}    ${email}
    [tags]    sanity

    input text    name=fld_username  ${username}
    input text    xpath://input[@name='fld_email']  ${email}

# You can execute this file by opening terminal and type robot tc001.robot or robot Testcases

