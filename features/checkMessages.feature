Feature: Check important messages
  As a customer I want sing in and
  check important messages from my account

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
    When  I click to the "myEbay" element on "home" page
    Then  I click to the "myMessages" element on "home" page
    Then  I click to the "myImportantMessages" element on "home" page
    Then  I should compare "You do not have any messages." with the "emptyMessageText" in "home" page


