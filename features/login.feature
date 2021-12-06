Feature: Login functionality in Ebay Website
  As a customer
  I want sing in and see
  That am I in sign  page
  Or something went error

  Scenario Outline: Login negative examples

    Given I am on the "signin" page
    When  I type "<username>" text in the "inputUsername" filed on "login" page
    Then  I click to the "continueButton" element on "login" page
    Then  I should wait until "errorMassageText" element is displayed on "login" page
    Then  I should compare "<massage>" with the "errorMassageText" in "login" page

    Examples:
      | username           | password      | massage                   |
      | 27arsn277@gmail.cm | gamil.com2012 | Oops, that's not a match. |
      | 27arsn277          | gamil.com2012 | Oops, that's not a match. |

  Scenario Outline: Password negative examples

    Given I am on the "signin" page
    When  I type "<username>" text in the "inputUsername" filed on "login" page
    Then  I click to the "continueButton" element on "login" page
    Then  I should wait until "inputPassword" element is displayed on "login" page
    Then  I type "<password>" text in the "inputPassword" filed on "login" page
    Then  I click to the "SignInButton" element on "login" page
    Then  I should wait until "errorMassageText" element is displayed on "login" page
    Then  I should compare "<massage>" with the "errorMassageText" in "login" page

    Examples:
      | username            | password    | massage                   |
      | 27arsn277@gmail.com | gamil.com22 | Oops, that's not a match. |
      | 27arsn277@gmail.com | Gami*-      | Oops, that's not a match. |


  Scenario: Login positive example

    Given I am on the "signin" page
    When  I type "27arsn277@gmail.com" text in the "inputUsername" filed on "login" page
    Then  I click to the "continueButton" element on "login" page
    Then  I should wait until "inputPassword" element is displayed on "login" page
    Then  I type "gamil.com2012" text in the "inputPassword" filed on "login" page
    Then  I click to the "SignInButton" element on "login" page
    Then  I should wait until "arrowDownSign" element is displayed on "account" page
    Then  I should see arrow-down sign in my "account" page

