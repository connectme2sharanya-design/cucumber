
Feature: ContactUs Feature

  This is to test passing the paragraph to the test area in the application

  Scenario: ContactUs TextArea
    Given I navigate to booking.com
    When  I click on the contact-us link and enter the following details
    """
    Hi Tech Team,
    My Account has an issue. I am not able to reset my password.
    Kindly reset my password and do the needfull
    """
    Then I should see "query-submiitted" messsage
