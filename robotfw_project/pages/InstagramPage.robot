*** Settings ***
Library    SeleniumLibrary
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py
    # Instagram sayfası ile etkileşim kurmak için gerekli anahtar kelimeleri içe aktar.        

*** Keywords ***
Go to Instagram Login Page
    Open Browser    ${Datas.url}    chrome    options=add_argument(--headless)
    Maximize Browser Window
    Set Selenium Implicit Wait    5 seconds
    # Instagram giriş sayfasına git. Tarayıcıyı maksimize et ve toleranslı bekleme süresini 5 saniye olarak ayarla.

Login to Instagram With Credentials
    Input Text    ${InstagramLocators.emailField}    ${Datas.email}
    Input Text    ${InstagramLocators.passwordField}    ${Datas.password}
    Press Keys   ${InstagramLocators.passwordField}    ENTER
    # Instagram'a geçerli bilgilerle giriş yap. Email ve şifre alanlarına doğru bilgileri gir ve ENTER tuşuna bas.

Login to Instagram With Wrong Credentials
    Input Text    ${InstagramLocators.emailField}    ${Datas.wrongEmail}
    Input Text    ${InstagramLocators.passwordField}    ${Datas.wrongPassword}
    Press Keys   ${InstagramLocators.passwordField}    ENTER
    # Instagram'a yanlış bilgilerle giriş yap. Email ve şifre alanlarına yanlış bilgileri gir ve ENTER tuşuna bas.