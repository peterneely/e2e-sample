
Feature: Upsell products
  As a customer
  I would like to view upsell products when I add a product to my shopping bag
  So that I can easily add related products

  Background: Customer viewing the minibag
    Given an online customer added any product to their shopping bag
    And they are viewing the minibag

  Scenario: 1: Show Upsell products
    When there are upsell products to display
    Then the customer should see 3 of them, each with the following details:
      | details              |
      | title                |
      | image                |
      | description          |
      | discount price       |
      | was price            |
      | size when applicable |
      | add to bag           |

  Scenario Outline: 2: Add upsell product to the bag
    And upsell products are displayed
    When they add <number> upsell products to the bag, one by one
    Then each product appears in the shopping bag summary, last added on top
    And the shopping bag summary subtotal updates
    And the product summary updates to the added product details
    And the product is hidden in the upsell products
    And the upsell area is <shown_or_hidden>

  Examples:
    | number | shown_or_hidden |
    | 1      | shown           |
    | 2      | shown           |
    | 3      | hidden          |

  Scenario: 3: Cannot add upsell product to the bag
    And upsell products are displayed
    When they try to add an upsell product to the bag that requires a size to be chosen but they haven't chosen a size
    Then they should not be able to add the product to the bag
    And they should be prompted to choose a size