Feature: FRIES promotion
  As a customer
  I would like to view an offer related to the product I added to my shopping bag
  So that I can easily buy related products that may interest me

  Background: Customer viewing the minibag
    Given an online customer added any product to their shopping bag
    And they are viewing the minibag

  Scenario: 1: Display FRIES
  Note: An example FRIES promotion is a shirt for £25 which is offered when a customer adds "4 for £100" shirts to their bag
    When the product in their bag matches an active FRIES promotion
    Then display the FRIES with these details:
      | details                   |
      | title                     |
      | description               |
      | picture                   |
      | link to promotion details |

  Scenario: 2: Choose FRIES
    And the product in their bag matches an active FRIES promotion
    And the FRIES is displayed
    When they choose the FRIES
    Then the minibag should not be shown
    And they should see details for the FRIES

  Scenario: 3: Do not display FRIES
    When the product in their bag does not match an active FRIES promotion
    Then do not display the FRIES
