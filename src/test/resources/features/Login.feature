@Epic1001
Feature: Login Feature

  In order to login to the application as a user, I need to enter valid username and password

  Background:
    Given I navigate to example.com
    When  I am on the login-page

  @Prod
  Scenario: Test Build Validation Login
    Then  I entered "actual-customer" username
    And   I entered "actual-customer-password" password
    And   I enter the prod pass code
    And   I click on login button
    Then  I "should-be" successfully logged in

  @Sprint100 @US12
  Scenario: Test Valid Login Scenario
    Then  I entered "valid" username
    And   I entered "valid" password
    And   I click on login button
    Then  I "should-be" successfully logged in

  @Sprint100 @US13
  Scenario: Test Invalid Login Scenario
    Then  I entered "invalid" username
    And   I entered "invalid" password
    And   I click on login button
    Then  I "should-not-be" successfully logged in

  @Sprint100 @US13
  Scenario: Test Invalid Login Scenario_2
    Then  I entered "valid" username
    And   I entered "invalid" password
    And   I click on login button
    Then  I "should-not-be" successfully logged in

  @Sprint101
  Scenario: Test with Admin Credentials
    Then  I entered "admin" username
    And   I entered "admin@123" password
    And   I click on login button
    Then  I "should-be" successfully logged in