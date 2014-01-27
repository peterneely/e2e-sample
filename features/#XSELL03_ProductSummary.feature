Feature: Product summary
  As an online customer
  I would like to see a summary of the product I just added to my shopping bag
  so that I know I added the correct product

  Background: Viewing minibag
    Given an online customer is viewing the minibag

  Scenario: 1: Summary for formal shirts
    And they added a formal shirt into their shopping bag
    And they are viewing the minibag
    Then display the following details:
      | Details       |
      | Product Image |
      | Product Title |
      | Stockcode     |
      | Collar size   |
      | Sleeve length |
      | Cuff type     |
      | Quantity      |
      | Price         |

  Scenario: 2: Summary for trousers, jackets and blazers
    And they added trousers, a jacket or a blazer into their shopping bag
    And they are viewing the minibag
    Then display the following details:
      | Details       |
      | Product Image |
      | Product Title |
      | Stockcode     |
      | Size          |
      | Length        |
      | Price         |

  Scenario: 3: Summary for suits
    Given an online customer added a suit into their shopping bag
    And they are viewing the minibag
    Then display the following details:
      | Details       |
      | Product Image |
      | Product Title |
      | Price         |

  Scenario: 4: Summary for products with one size option
    Given an online customer added any of the following product types into their shopping bag:
      | Product types                    |
      | Casual shirt                     |
      | Shoes                            |
      | Casual wear - rugby & polo shirt |
      | Casual wear - knitwear           |
      | Outerwear - Coat                 |
      | Accessories - Socks              |
      | Accessories - Belts              |
      | Accessories - Hats               |
      | Accessories - Belts              |
      | Accessories - Shoe care          |
      | Accessories - Boxer shorts       |
      | Womenswear                       |
    And they are viewing the minibag
    Then display the following details:
      | Details       |
      | Product Image |
      | Product Title |
      | Stockcode     |
      | Size          |
      | Quantity      |
      | Price         |

  Scenario: 5: Summary for products without size options
    Given an online customer added any of the following product types into their shopping bag:
      | Product types                     |
      | Tie                               |
      | Accessories - Cufflinks           |
      | Accessories - Scarf               |
      | Accessories - Gloves              |
      | Accessories - Umbrellas           |
      | Accessories - Evening accessories |
      | Gift vouchers                     |
    And they are viewing the minibag
    Then display the following details:
      | Details       |
      | Product Image |
      | Product Title |
      | Stockcode     |
      | Quantity      |
      | Price         |
