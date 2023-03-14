Feature: Performance testing

  Background:
    * url 'https://api.jikan.moe/v4/'

  Scenario: Performance
    * path 'anime/1'
    When method get
    Then status 200