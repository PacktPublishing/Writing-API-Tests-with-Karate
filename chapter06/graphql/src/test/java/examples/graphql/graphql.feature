Feature: Test GraphQL API using Karate

  Scenario: Query for user information
    * url "https://graphqlzero.almansi.me/api"
    * text userPosts =
    """
    {
      user(id: 1) {
        name,
        posts {
          data {
            title
          }
        }
      }
    }
    """
    And request { query: '#(userPosts)'}
    When method post
    * print response.data