Feature: Bank scenario 1

  Scenario: A user deposits and withdraws money
    # Given steps are used to describe the initial context of the system - the scene of the scenario. It is typically something that happened in the past.
    Given the user have 1500 SEK
    # When steps are used to describe an event, or an action. This can be a person interacting with the system, or it can be an event triggered by another system.
    When the user deposits 400 SEK more
    # If you have successive Given’s, When’s, or Then’s, you could write And
    And the user withdraws 1000 SEK
    # Then steps are used to describe an expected outcome, or result.
    Then the user should have 900 SEK left

  Scenario: A user withdraws money
    Given the user have 1500 SEK
    When the user withdraws 1500 SEK
    Then the user should have 0 SEK left

    # The given is repeated twice! It might always be true for all scenarios. For this we can use Background keyword. Go to BankTeller2.