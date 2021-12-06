Feature: Add to cart functionality in Ebay Website
  As a customer I want sing in and add product in bag

  Background:
    Given I am on the "signin" page
    When  I type "27arsn277@gmail.com" text in the "inputUsername" filed on "login" page
    Then  I click to the "continueButton" element on "login" page
    Then  I should wait until "inputPassword" element is displayed on "login" page
    Then  I type "gamil.com2012" text in the "inputPassword" filed on "login" page
    Then  I click to the "SignInButton" element on "login" page
    Then  I should wait until "arrowDownSign" element is displayed on "account" page
    Then  I should see arrow-down sign in my "account" page

  Scenario: add to bag some product
    Then  I type "watch" text in the "searchInput" filed on "home" page
    Then  I click to the "searchButton" element on "home" page
    Then  I click to the "firstProduct" element on "afterSearch" page
    Then  I switch to the new window with this "/itm" matcher
    Then  I click to the "selectColor" element on "afterSearch" page
    Then  I click to the "setColor" element on "afterSearch" page
    Then  I click to the "addToCart" element on "afterSearch" page
    Then  I hover to the "bagCount" element on "home" page
    Then  I should wait until "bagCount" element is displayed on "home" page
    Then  I should compare count "bagCount" with "1" in "home" page

#    Then  I type "Avan" text in the "Address" filed on "checkout" page
#    Then  I type "Yerevan" text in the "City" filed on "checkout" page
#    Then  I type "Yerevan" text in the "State" filed on "checkout" page
#    Then  I type "0063" text in the "Zip" filed on "checkout" page
#    Then  I type "77715545" text in the "phoneNumber" filed on "checkout" page
#    Then  I click to the "goToCheckout" element on "checkout" page
#
#

