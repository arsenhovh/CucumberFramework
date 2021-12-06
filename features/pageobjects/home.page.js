const BasePage = require("../pageobjects/page");

module.exports = class HomePage extends BasePage {

    get twitterIcon() {
        return $('#gf-BIG > table > tbody > tr > td:nth-child(3) > ul > li:nth-child(4) > a')
    }

    get fbIcon() {
        return $('#gf-BIG > table > tbody > tr > td:nth-child(3) > ul > li:nth-child(3) > a')
    }

    get countryChangeHover() {
        return $('#gf-fbtn')
    }

    get myEbay() {
        return $('#gh-eb-My > div > a.gh-eb-li-a.gh-rvi-menu')
    }

    get myMessages() {
        return $('#top-nav > div.tabbable.fake-tabs > ul > li:nth-child(2) > a')
    }

    get myImportantMessages() {
        return $('#priority_unread_c')
    }

    get emptyMessageText() {
        return $('.sm-md')
    }

    get bagCount() {
        return $('#gh-cart-n')
    }

    get countryBelarus() {
        return $("#gf-f > ul > li:nth-child(4) > a")
    }

    get countryRussia() {
        return $("#gf-f > ul > li:nth-child(39) > a")
    }

    get searchInput() {
        return $("#gh-ac");
    }

    get searchButton() {
        return $("#gh-btn");
    }

    open() {
        return super.open("")
    }

}
