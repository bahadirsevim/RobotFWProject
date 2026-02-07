*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/InstagramPage.robot
    # Instagram sayfası ile etkileşim kurmak için gerekli anahtar kelimeleri içe aktar.

Test Setup    Go to Instagram Login Page
Test Teardown    Close Browser
    # Her test case'den önce Instagram giriş sayfasına git ve test case tamamlandıktan sonra tarayıcıyı kapat.

*** Test Cases ***
Instagram Login Page Opening Test
    Page Should Contain Element    ${InstagramLocators.loginWithFacebookText}
    # Instagram giriş sayfasının açıldığını doğruluyoruz. Bunun için "Facebook ile Giriş Yap" yazısının sayfada görünüp görünmediğini kontrol ediyoruz.

Instagram Title Test
    Title Should Be    Instagram
    # Instagram ana sayfasının başlığını doğruluyoruz. Başlık "Instagram" olmalı.

Instagram Login Test
    Login to Instagram With Credentials
    Page Should Contain Element    ${InstagramLocators.verificationCodeField}
    # İki föktörlü doğrulama ekranına geldiğimizi doğruluyoruz. Bunun için doğrulama kodu girdiğimiz alanın sayfada görünüp görünmediğini kontrol ediyoruz.

Instagram Wrong Login Test
    Login to Instagram With Wrong Credentials
    Page Should Contain Element    ${InstagramLocators.wrongCredentialsText}
    # Giriş yapma için negatif test gerçekleştiriyoruz. Yani yanlış bilgilerle giriş yapmayı deniyoruz, hata almak istiyoruz.
    # Should be equal komutu ile instagram'ın hata mesajlarını gösterdiği yerde şu metin yazıyor mu? şeklinde bir karşılaştırma da yapabilirdik.
    # Fakat İnstagram içinde Locator bulmak oldukça zorlayıcı. Değişen sınıf isimlerinden dolayı kodun bozulmasını istemedim. 