Feature: Related products
  Note: This is the "People like you also liked" section of the minibag
  As a customer
  I would like to view related products to the one I added to my shopping bag
  So that I can easily buy related products that may interest me

  Background: Customer viewing the minibag
    Given an online customer added any product to their shopping bag
    And they are viewing the minibag

  Scenario: 1: Display related products
  Note: Data provided by Peerius
    Then they should see 5 related products that contain the following details:
      | details       |
      | image         |
      | product title |
      | price         |
      | was price     |

  Scenario: 2: Choose a related product
    When they choose a related product by selecting its image or title
    Then the minibag should not be shown
    And they should see product details for the chosen product