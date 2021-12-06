const {Given, When, Then} = require('@wdio/cucumber-framework');
const pageFactory = require("../pageobjects/pageFactory");

Given(/^I am on the "(.*)" page$/, async (pageName) => {
        await pageFactory.getPage(pageName).open()
});
When(/^I type "(.*)" text in the "(.*)" filed on "(.*)" page$/, async (text, element, pageName) => {
    await pageFactory.getPage(pageName)[element].setValue(text);
});
Then(/^I click to the "(.*)" element on "(.*)" page$/, async (element, pageName) => {
    await pageFactory.getPage(pageName)[element].click()
});
Then(/^I should compare "(.*)" with the "(.*)" in "(.*)" page$/, async (massage, element, pageName) => {
    expect(await pageFactory.getPage(pageName)[element]).toHaveText(massage)
});
Then(/^I should see arrow-down sign in my "(.*)" page$/, async (pageName) => {
    expect(await pageFactory.getPage(pageName).arrowDownSign).toExist();
});
Then(/^I hover to the "(.*)" element on "(.*)" page$/, async (element, pageName) => {
    await pageFactory.getPage(pageName)[element].moveTo()
});
Then(/^I expect page url should be equal "(.*)"$/, async (newUrl) => {
    expect(await browser.url().toString()).toHaveText(newUrl)
});
Then(/^I should wait until "(.*)" element is displayed on "(.*)" page$/, async (element, pageName) => {
    await browser.waitUntil(() => {
            return pageFactory.getPage(pageName)[element].isDisplayed()
        },
        {
            timeout: 10000
        });
});
Then(/^I should compare count "(.*)" with "(.*)" in "(.*)" page$/, async (element, count, pageName) => {
    expect(await pageFactory.getPage(pageName)[element]).toHaveText(count.toString())
});
Then(/^I switch to the new window with this "(.*)" matcher$/, async (matcher) => {
    await browser.switchWindow(matcher)
});
Then(/^I should check the new page title with "(.*)"$/, async (text) => {
    await expect(browser).toHaveTitle(text);
});
