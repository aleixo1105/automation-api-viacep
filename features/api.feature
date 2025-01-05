Feature: VIACEP

  Scenario: Fetch data for a valid CEP
    Given I make a GET request to "01001000"
    Then the logradouro should be "Praça da Sé"
    Then the DDD should be "11"
