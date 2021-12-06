module.exports = class AfterSearchPage {

    get firstProduct() {
        return $('.s-item__image-img')
    }

    get selectColor() {
        return $('#msku-sel-1.msku-sel');
    }

    get setColor() {
        return $('#msku-opt-1');
    }

    get addToCart() {
        return $('#isCartBtn_btn');
    }

}