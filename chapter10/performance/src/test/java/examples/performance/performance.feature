Feature: Performance testing

  Scenario: Performance
    * url 'https://api.jikan.moe/v4/'
    * path 'anime/1'
    When method get
    Then status 200