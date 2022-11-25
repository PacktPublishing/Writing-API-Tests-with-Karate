Feature: Reporting demo

  @passing
  Scenario: get all users
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'users'
    When method get
    Then status 200

  @passing
  Scenario: get a post
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    And param userId = 1
    When method get
    Then status 200

  @failing
  Scenario: wrong path
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'this_is_wrong'
    When method get
    Then status 200