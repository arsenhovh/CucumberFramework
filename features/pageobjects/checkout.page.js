module.exports = class CheckoutPage {

    get Address() {
        return $('#address1');
    }

    get City() {
        return $('#city');
    }

    get State() {
        return $('//*[@id="state"]');
    }

    get phoneNumber() {
        return $('//*[@id="phoneFlagComp1"]');
    }

    get Zip() {
        return $('#zip');
    }

    get goToCheckout() {
        return $('#sbtBtn');
    }

}