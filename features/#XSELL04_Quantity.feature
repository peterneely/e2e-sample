Feature: Quantity
  As an online customer
  I would like to be able to change the quantity of the product I just added to my shopping bag
  so that I can buy the correct amount

  Background: Viewing the minibag
    Given an online customer added a product to their shopping bag
    And they are viewing the minibag

  Scenario: 1: Buttons: Can increment to valid quantity
    Then they should be able to increment the quantity by 1 with each click
    And the quantity in the shopping bag summary should increment with each click
    And the price in the product summary should increment with each click
    And the subtotal in the shopping bag summary should increment with each click
    And the FRIES promotion should be shown with each click if a matching promotion is available
    And the FRIES promotion should be hidden with each click if a matching promotion is not available
  Examples:

  Scenario: 2: Buttons: Can decrement to valid quantity
    Then they should be able to decrement the quantity by 1 with each click
    And the quantity in the shopping bag summary should decrement with each click
    And the price in the product summary should decrement with each click
    And the subtotal in the shopping bag summary should decrement with each click
    And the FRIES promotion should be shown with each click if a matching promotion is available
    And the FRIES promotion should be hidden with each click if a matching promotion is not available

  Scenario: 3: Buttons: Cannot increment to invalid quantity
    And the quantity in the product summary is 99
    Then the increment control should be disabled

  Scenario: 4: Buttons: Cannot decrement to invalid quantity
    And the quantity in the product summary is 1
    Then the decrement control should be disabled

  Scenario: 5: Custom: Can enter valid quantity
    Then they should be able to enter a quantity from 1 to 99, inclusive
    And the quantity in the shopping bag summary should update with each keypress
    And the price in the product summary should update with each keypress
    And the subtotal in the shopping bag summary should update with each keypress
    And the FRIES promotion should be shown with each keypress if a matching promotion is available
    And the FRIES promotion should be hidden with each keypress if a matching promotion is not available

  Scenario Outline: 6: Custom: Cannot enter invalid quantity
    When they try to enter an <invalid_quantity>
    Then the quantity in the product summary should change to <value>
    And the quantity in the shopping bag summary should change to <value>
    And the price in the product summary should update
    And the subtotal in the shopping bag summary should update
    And the FRIES promotion should be shown if a matching promotion is available
    And the FRIES promotion should be hidden if a matching promotion is not available
    And customer should see an error message

  Examples:
    | invalid_quantity | value |
    | Less than 1      | 1     |
    | Greater than 99  | 99    |
    | Not a number     | 1     |