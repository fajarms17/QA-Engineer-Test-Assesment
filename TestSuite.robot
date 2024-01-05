*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Login and Logout
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Wait Until Page Contains Element    name:username    10s
    Input Text    name:username    Admin
    Wait Until Page Contains Element    name:password    10s
    Input Password    name:password    admin123
    Click Button    css:button[type='submit']
    Wait Until Page Contains Element    xpath://span[@class='oxd-userdropdown-tab']    10s
    Click Element    xpath://span[@class='oxd-userdropdown-tab']
    Click Element    xpath://a[contains(text(),'Logout')]

Update Data
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    name:username    10s
    Input Text    name:username    Admin
    Wait Until Page Contains Element    name:password    10s
    Input Password    name:password    admin123
    Click Button    css:button[type='submit']
    Wait Until Page Contains Element    xpath://span[text()='My Info']    10s
    Click Element    xpath://span[text()='My Info']
    Wait Until Page Contains Element    xpath:(//input)[2]    10s
    Input Text    name:firstName    Rahmat
    Scroll Element Into View    xpath:(//button[@type='submit'])[1]
    Click Button    xpath:(//button[@type='submit'])[1]
    Sleep    20s

test
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    name:username    10s
    Input Text    name:username    Admin
    Wait Until Page Contains Element    name:password    10s
    Input Password    name:password    admin123
    Click Button    css:button[type='submit']
    Wait Until Page Contains Element    xpath://span[text()='Admin']    10s
    Click Element    xpath://span[text()='Admin']
    Wait Until Page Contains Element    //a[contains(text(),'Nationalities')]    10s
    Click Element    //a[contains(text(),'Nationalities')]
    Wait Until Page Contains Element    //button[normalize-space()='Add']    10s
    Click Button    //button[normalize-space()='Add']
    Wait Until Page Contains Element    (//input)[2]    10s
    Input Text    (//input)[2]    Admin
    Sleep    20s
