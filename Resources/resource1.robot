*** settings ***
Library    SeleniumLibrary
Library  ../Externelkeyword/userkeyword.py

*** variables ***


*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${URL}
    create webdriver    Chrome    executable_path=/home/chetan/PycharmProjects/RobotAutomation/Testcases/chromedriver
    go to    ${URL}
    maximize browser window
    ${Title}=    Get Title
Create folder at runtime
    [Arguments]    ${foldername}    ${subfoldername}
  create_folder    ${foldername}
  create_sub_folder    ${subfoldername}

Concatenate username and password
    [Arguments]    ${username}    ${password}
    ${resultval}=    concatenate_two_values  ${username}  ${password}
    log  ${resultval}

    #[return]    ${Title}

Closed Browser
    close browser