Feature: Reading from a file

  Scenario Outline: Create user <name>
    Given url 'https://jsonplaceholder.typicode.com/users'
    * print "<name>"
    And request
    """
    {
      "name": "<name>",
      "username": "<username>",
      "email": "<email>"
    },
    """
    When method post
    Then status 201

    Examples:
      | read('newUsers.json') |