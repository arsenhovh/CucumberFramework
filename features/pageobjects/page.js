module.exports = class BasePage {

    open(path) {
        return browser.url(`https://www.ebay.com/${path}`)
    }

}
