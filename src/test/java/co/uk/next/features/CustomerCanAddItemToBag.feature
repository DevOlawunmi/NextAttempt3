Feature: Add to basket
  As a Next customer
  I want the ability to add item into basket
  So that I can decide to buy or not

  Scenario Outline: User can successfully add item to cart

    Given I navigate to Next.co.uk
    And I enter “<searchItem>” in search bar
    And search result page is displayed
    And I click on “<itemNumber>”
    And product detail page is displayed
    When I select “<productSize>” from size Drop down
    And I click ‘add to bag’
    Then number of items in bag is displayed
    And items in bag are displayed
    And total of items in bag is displayed
    And checkout button is highlighted

    Examples:
      |searchItem  | itemNumber| productSize|
      |girls shoes| 1  | 7 EU 24|

