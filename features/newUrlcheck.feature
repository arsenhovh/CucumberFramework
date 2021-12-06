Feature: eBay site country change
  I want change the eBay site country
  and check the website address

  Scenario Outline: After eBay site country change check website url

    Given I am on the "home" page
    Then  I should wait until "countryChangeHover" element is displayed on "home" page
    When  I hover to the "countryChangeHover" element on "home" page
    Then  I should wait until "<country>" element is displayed on "home" page
    Then  I click to the "<country>" element on "home" page
    Then  I expect page url should be equal "<newUrl>"

    Examples:
      | country        | newUrl               |
      | countryBelarus | https://by.ebay.com/ |
      | countryRussia  | https://ru.ebay.com/ |

