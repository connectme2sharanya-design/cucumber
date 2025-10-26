Feature: Multi Login Feature
  In order to perform multi login to the application we can use scenario outline

  Scenario Outline: Login with Multi set of Users
    Given   I navigate to example.com
    When    I am on the login-page
    Then    I entered "<username>" username
    And     I entered "<password>" password
    And     I click on login button
    Then    I "<status>" successfully logged in
    Examples:
      | username  | password    | status        |
      | valid     | valid       | should-be     |
      | valid     | invalid     | should-not-be |
      | invalid   | invalid     | should-not-be |
      | customer1 | pass@123    | should-be     |
      | admin     | admin@123   | should-be     |
      | manager   | manager@123 | should-be     |
      | valid     |             | should-not-be |
