Feature: Using cookies
  
  Scenario: Cookies
    Given url 'https://api.instantwebtools.net/v2/airlines'
    And cookies { value1: 'test', value2: '123'}
    When method get
    * print karate.prevRequest.headers.Cookie