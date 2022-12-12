Feature: Advanced concepts

  Scenario: Create user <user> from file
    * def user = read("newUser.json")
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request user
    When method post
    Then status 201
    * print 'created user: ', user.name

  Scenario Outline: Data driven test (using name <name>)
    * def newUser =
    """
      {
        name: #(name),
        "username": "bb",
        "email": "email@example.com"
      }
    """
    * print newUser
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request newUser
    When method post
    Then status 201

    Examples:
      | i => i >= 4 ? null : ({name: `Benjamin ${i}`}) |