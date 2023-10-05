*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser

*** Variables ***
${url}        https://connect.dev.ittron.co.id/login
${browser}    chrome

*** Test Cases ***

login dengan akun valid
    input nomor WA valid
    input password valid
    klik button login

login dengan akun tidak valid
    input nomor WA tidak valid
    input password tidak valid
    klik button login

*** Keywords ***

input nomor WA valid
    Input Text    //*[@id="username"]    081217948205

input nomor WA tidak valid
    Input Text    //*[@id="username"]    088888880088

input password valid
    Input Text    //*[@id="password"]    Koyuji6661!

input password tidak valid
    Input Text    //*[@id="password"]    passwordsembarangan

klik button login
    Click Button    //*[@id="wpFormLogin"]/div/div[3]/div[2]/button
    Sleep    1s