Feature: User Registration

  @List
  Scenario: User Registration as List
    Given I am on the registration page of the application
    When  I enter the values into the text field and click on submit
      | shantosh | kumar   | shantosh@gmail.com | pass@123   | pass@123   |
      | john     | morison | mjohn@gmail.com    | keep@123   | keep@123   |
      | jaya     | k       | jaya@gmail.com     | secret@123 | secret@123 |
    Then I should see the success message

  @Map
  Scenario: User Registration as Map
    Given I am on the registration page of the application
    When  I enter the values into the text field and click on register button
      | firstname | lastname | email              | password   | confirm-password |
      | shantosh  | kumar    | shantosh@gmail.com | pass@123   | pass@123         |
      | john      | morison  | mjohn@gmail.com    | keep@123   | keep@123         |
      | jaya      | k        | jaya@gmail.com     | secret@123 | secret@123       |
    Then I should see the success message