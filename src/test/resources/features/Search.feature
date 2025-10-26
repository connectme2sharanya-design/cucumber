Feature: Product Search Feature
  In order to search for a product, I need to navigate to Amazon.com
Background:
  Given I am on the search field of amazon.com

  @UAT
  Scenario: Search Product "Apple MackBook Pro"
    When  I search for a product "Apple MacBook Pro" with price 1000
    Then I should see "Apple MacBook Pro" is displayed

  Scenario: Search Product "Apple MackBook Air"
    When  I search for a product "Apple MackBook Air" with price 1000
    Then I should see "Apple MackBook Air" is displayed

  Scenario: Search Product "Lenovo Thinkpad"
    When  I search for a product "Lenovo Thinkpad" with price 1000
    Then I should see "Lenovo Thinkpad" is displayed