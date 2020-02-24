Feature: Bank scenario 2

  Sometimes you just want to use the bank
  # A Background allows you to add some context to the scenarios in the feature. It can contain one or more Given steps.
  # A Background is run before each scenario, but after any Before hooks. In your feature file, put the Background before the first Scenario.
  Background:
    Given the user have 1500 SEK

  Scenario: A user deposits and withdraws money
    When the user deposits 400 SEK more
    # If you have successive Given’s, When’s, or Then’s, you could write And
    And the user withdraws 1000 SEK
    # Then steps are used to describe an expected outcome, or result.
    Then the user should have 900 SEK left

  Scenario: A user withdraws money
    When the user withdraws 1500 SEK
    Then the user should have 0 SEK left
