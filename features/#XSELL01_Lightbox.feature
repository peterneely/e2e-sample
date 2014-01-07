Feature: Lightbox
  As an online customer
  I would like to see related items when I add an item to my shopping bag
  so that I can buy other items spontaneously

  Scenario Outline: 1: Show lightbox
    Given an online customer is browsing the site on <locale>
    When they add any one product to their shopping bag
    Then they should see a minibag lightbox

  Examples:
    | locale |
    | UK     |
#    | DE     |
#    | US     |
#    | AU     |

  Scenario: 2: Close by clicking button
    Given a customer is viewing the minibag
    When they click the close button
    Then close the lightbox

  Scenario: 3: Close by clicking away
    Given a customer is viewing the minibag
    When they click outside it
    Then close the lightbox