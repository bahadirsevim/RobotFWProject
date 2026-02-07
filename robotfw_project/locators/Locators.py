class InstagramLocators:
    loginWithFacebookText = "//span[contains(text(),'Facebook')]"
    emailField = "//input[@name='email']"
    passwordField = "//input[@name='pass']"
    verificationCodeField = "//input[@name='verificationCode']"
    wrongCredentialsText = "//span[contains(normalize-space(.),'Girdiğin giriş bilgileri yanlış.')]"
    # Diğer locators burada tanımlanabilir

# Robot Framework'ün erişebilmesi için class örneğini oluştur
InstagramLocators = InstagramLocators()