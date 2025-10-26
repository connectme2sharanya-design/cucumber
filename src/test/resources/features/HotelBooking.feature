Feature: Hotel Booking Feature
  In order to book a room i need to be a registered user on the website

  Scenario: Test Booking "Production Support" Room
    Given I navigate to booking.com
    When  I select the room type as "product-test"
    And   I select the check-in date as "10-20-2025" and check-out date as "10-25-2025"
    And   I choose the no of guests as 1
    And   I click on submit button
    Then  I should see "booking-confirmed" message with 1800 as booking id

  Scenario: Test Booking "Standard" Room
    Given I navigate to booking.com
    When  I select the room type as "standard"
    And   I select the check-in date as "10-16-2025" and check-out date as "10-20-2025"
    And   I choose the no of guests as 3
    And   I click on submit button
    Then  I should see "booking-confirmed" message with 1201 as booking id

  Scenario: Test Booking "Deluxe" Room
    Given I navigate to booking.com
    When  I select the room type as "deluxe"
    And   I select the check-in date as "11-20-2025" and check-out date as "11-25-2025"
    And   I choose the no of guests as 2
    And   I click on submit button
    Then  I should see "booking-confirmed" message with 1801 as booking id

  Scenario: Test Booking "Suite" Room
    Given I navigate to booking.com
    When  I select the room type as "suite"
    And   I select the check-in date as "12-20-2025" and check-out date as "21-31-2025"
    And   I choose the no of guests as 10
    And   I click on submit button
    Then  I should see "booking-confirmed" message with 3210 as booking id