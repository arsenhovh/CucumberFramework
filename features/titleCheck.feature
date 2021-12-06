Feature: Twitter href check
  As a customer I want to navigate to Twitter from eBay

  Background:
    Given I am on the "signin" page
    When  I type "27arsn277@gmail.com" text in the "inputUsername" filed on "login" page
    Then  I click to the "continueButton" element on "login" page
    Then  I should wait until "inputPassword" element is displayed on "login" page
    Then  I type "gamil.com2012" text in the "inputPassword" filed on "login" page
    Then  I click to the "SignInButton" element on "login" page
    Then  I should wait until "arrowDownSign" element is displayed on "account" page
    Then  I should see arrow-down sign in my "account" page

  Scenario:
    Given I am on the "home" page
    Then  I click to the "twitterIcon" element on "home" page
    Then  I should check the new page title with "eBay (@eBay) / Twitter"
