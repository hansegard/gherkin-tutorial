Feature: Is it Friday yet?
  Everybody wants to know when it's Friday

  Scenario Outline: Sunday isn't Friday
    Given today is <day>
    When I ask whether it's Friday yet
    Then I should be told <expectedAnswer>
    Examples:
      | day              | expectedAnswer |
      | 'Sunday'         | 'Nope'         |
      | 'Friday'         | 'Yep'          |
      | 'some other day' | "Nope"         |