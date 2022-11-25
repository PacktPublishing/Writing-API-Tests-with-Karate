Feature: Reporting demo 2

  @passing
  Scenario: get all users 2
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'users'
    When method get
    Then status 200

  @passing
  Scenario: get a post 2
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    And param userId = 1
    When method get
    Then status 200