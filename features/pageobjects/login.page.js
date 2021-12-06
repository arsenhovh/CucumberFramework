const BasePage = require("../pageobjects/page");

module.exports = class LoginPage extends BasePage {

    get inputUsername() {
        return $('#userid')
    }

    get continueButton() {
        return $('#signin-continue-btn')
    }

    get inputPassword() {
        return $('#pass')
    }

    get SignInButton() {
        return $('#sgnBt')
    }

    get errorMassageText() {
        return $('#errormsg')
    }

    open() {
        return super.open("signin")
    }

}
