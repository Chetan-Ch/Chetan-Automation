*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Resource    ../../Resources/resource1.robot
Library    ../../Externelkeyword/Locators.py

*** Variables ***


*** Test Cases ***
TC_001 Browser Start and Close
    #Create folder at runtime    hello1234    test
    Concatenate username and password    Chetan    tulja
    [setup]    Start Browser and Maximize    http://www.thetestingworld.com/testings
    [teardown]    Closed Browser
    [tags]    sanity
    #log    ${res}
    #[timeout]    20s
    Enter Username Email    testingworldindia@gmail.com
    ${username1}=  Read Element Locator  Registration.username_textbox_name
    input text    name=${username1}  Chetan
    ${Actualurl}=    get location
    log    ${Actualurl}
    ${PageHTML}=    get source
    log    ${PageHTML}
    ${attr}=    Get Element Attribute    name:fld_username    class
    log    ${attr}
    select radio button    add_type    office
    select checkbox    name:terms
    select from list by index    name:sex    2
    ${val}=    Get Selected List Value    name:sex
    log    ${val}
    ${tex}=    Get Selected List Label    name:sex
    log    ${tex}
    ${Alllabels}=    Get List items    name:sex
    log    ${Alllabels}
    click link    xpath://a[text()='Read Detail']
    ${speed}=    get selenium speed
    log    ${speed}
    ${Value}=    Get Value    xpath://input[@type='submit']
    log    ${Value}
    ${Text}=    Get Text    xpath://a[@class='displayPopup']
    log    ${Text}
*** Keywords ***
Enter Username Email
    [Documentation]    this is keyword releated to registration
    [Arguments]    ${email}
    [tags]    smoke

    input text    xpath://input[@name='fld_email']  ${email}

Read Element Locator
    [Arguments]    ${Jsonpath}
    ${result}=    read_locator_from_json    ${Jsonpath}
    [return]    ${result}

# You can execute this file by opening terminal and type robot tc001.robot or robot Testcases

