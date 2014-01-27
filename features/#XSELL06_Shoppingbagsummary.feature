Feature: Shopping bag summary
  As an online customer
  I would like to view a summary of my shopping bag contents
  So that I can preview what I am buying

  Scenario Outline: 1: View shopping bag summary
    Given an online customer is browsing the site on <locale>
    And they are <logged_in_or_not>
    And they add any one product to their shopping bag
    And they are viewing the minibag
    Then they should see the title "Your bag"
    And the title should link to the shopping bag
    And they should see a shopping bag icon
    And they should see the following details for each product:
      | details  |
      | title    |
      | quantity |
      | price    |
    And each product title links to its product detail view
    And they should see the products sorted in descending order with the most recently added product on top
    And they should see a subtotal (excluding delivery) of all products
    And they should <see_or_not_see> the US tax total
    And they should be able to continue shopping
    And they should be able to go to the shopping bag
    And going to the shopping bag should be the default action for the minibag

  Examples:
    | locale | logged_in_or_not | see_or_not_see |
    | UK     | no               | not see        |
    | DE     | no               | not see        |
    | US     | no               | not see        |
    | US     | yes              | see            |
    | AU     | no               | not see        |

  Scenario: 2: Continue shopping
    Given an online customer adds any one product to their shopping bag
    And they are viewing the minibag
    And they choose to continue shopping
    Then the minibag should not be shown
    And they should see the view before they saw the minibag

  Scenario: 3: Go to shopping bag
    Given an online customer adds any one product to their shopping bag
    And they are viewing the minibag
    And they choose to go to their shopping bag
    Then the minibag should not be shown
    And they should see their shopping bag