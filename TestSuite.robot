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
