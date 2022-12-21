Feature: Test GraphQL API using Karate

  Scenario: Query for user posts
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
    * print response.data.user.name
    * def titles = []
    * def getTitle = function(postData) { karate.appendTo(titles, postData.title) }
    * karate.forEach(response.data.user.posts.data, getTitle)
    * print titles