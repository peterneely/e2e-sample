Feature: Checkout
  As an online customer
  I want to be able to checkout
  So that I can by products

  Scenario Outline: 01: Guest customer checkout
    Given an online customer is browsing the <locale> site
    And they navigate to a non-sized product
    And they add one product to their shopping bag
    And they checkout without signing in
    When they pay by any of these cards:
      | cards            |
      | VISA             |
      | MasterCard       |
      | American Express |
      | Maestro          |
    Then they should see confirmation that their order has been successful

  Examples:
    | locale |
    | UK     |
    | US     |
    | DE     |
    | AU     |

  Scenario Outline: 02: Registered customer checkout
    Given an online customer is browsing the <locale> site
    And they navigate to a non-sized product
    And they add one product to their shopping bag
    And they sign in when checking out
    When they pay by any of these cards:
      | cards            |
      | VISA             |
      | MasterCard       |
      | American Express |
      | Maestro          |
    Then they should see confirmation that their order has been successful

  Examples:
    | locale |
    | UK     |
    | US     |
    | DE     |
    | AU     |

