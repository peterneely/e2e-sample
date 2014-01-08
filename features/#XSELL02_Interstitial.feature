Feature: Interstitial
  As an online customer
  I would like to see related items when I add an item to my shopping bag
  so that I can buy other items spontaneously

  Scenario Outline: 1: Show interstitial
    Given an online customer is browsing the site on <locale>
    When they add any one product to their shopping bag
    Then they should see a minibag interstitial

  Examples:
    | locale |
    | UK     |
    | DE     |
    | US     |
    | AU     |
