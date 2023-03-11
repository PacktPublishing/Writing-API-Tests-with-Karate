Feature: Performance testing

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Performance
    * path 'posts/1'
    When method get
    Then status 200