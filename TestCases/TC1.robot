*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/



*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    LoginToApplication
    Close Browser
*** Keywords ***
loginToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email    pavanoltraining@gmail.com
    Input Text    id:Password    Test@123
    Wait Until Element Is Visible    xpath=//button[@class='button-1 login-button']    10s
    Click Element    xpath=//button[@class='button-1 login-button']
