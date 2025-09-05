Feature: Counter App
  As a user
  I want to use the counter app
  So that I can increment a counter

  Scenario: Initial counter value
    Given the app is running
    Then I should see "0" on the screen
    And I should see "You have pushed the button this many times:"

  Scenario: Increment counter
    Given the app is running
    When I tap the increment button
    Then I should see "1" on the screen

  Scenario: Multiple increments
    Given the app is running
    When I tap the increment button 3 times
    Then I should see "3" on the screen