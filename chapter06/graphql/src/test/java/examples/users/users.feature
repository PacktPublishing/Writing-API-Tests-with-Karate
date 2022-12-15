Feature: Test GraphQL API using Karate

  Scenario: Query for user information
    Given path 'user'
    And text query =
  """
  {
  query: 'query { user { name email } }'
  }
  """
    When method post
    Then status 200
    And match response == """{
  "data": {
  "user": {
  "name": "#string",
  "email": "#string"
  }
  }
  }
"""