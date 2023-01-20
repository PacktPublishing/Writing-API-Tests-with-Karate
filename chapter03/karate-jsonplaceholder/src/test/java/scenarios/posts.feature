Feature: Posts endpoint tests
Scenario: Checking the number of posts
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    And param userId = 1
    When method get
    Then status 200
    And match responseType == 'json'
    And match each response == { id: '#number', userId: '#number', title: '#string', body: '#string' }
    And match each response contains { userId: 1 }
    And match response == '#[10]'
    And match response == '#[]? _.userId == 1'
    And match response == '#[10] #object? _.userId == 1'
    And match response[0] == { id: '#number', userId: '#number', title: '#string', body: '#string' }
    And match response[0] contains { userId: 1 }
    * match response[0] == { id: '#present', userId: '#present', title: '#present', body: '#present' }
    * match response[0] == { thisShouldNotBeThere: '#notpresent', id: '#present', userId: '#present', title: '#present', body: '#present' }
    * print "Length", response.length
    # using assert
    And assert response.length > 1
    # using match, first way
    And match response != 1
    # using match, second way
    And match $ == '##[_ > 1]'
    And match response[0].userId == 1
    * def ids = $..userId
    * print ids
    
Scenario: Creating a new post
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    And request { userId: 10, title: 'Hello', body: 'World' }
    When method post
    Then status 201
    And match responseType == 'json'
    And match response == { id: #number, userId: 10, title: 'Hello', body: 'World' }

Scenario: Declaring a variable
    * def myName = 'Benjamin'
    * print 'Hello from', myName

Scenario: Creating a new post with variable
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    * def payload = { userId: 10, title: 'Hello', body: 'World' }
    And request payload
    When method post
    Then status 201
    And match responseType == 'json'
    * payload.id = "#number"
    And match response == payload

Scenario: Data table example
* table numbersAndWords
   | number | word   |
   | 5      | 'five' |
   | 10     | 'ten'  |
* print numbersAndWords


Scenario: Creating a new post with a data table
Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    * table payload
      |userId|title  |body   |
      |10    |'Hello'|'World'|
    * def payload = payload[0]
    And request payload
    When method post
    Then status 201
    And match responseType == 'json'
    * payload.id = "#number"
    And match response == payload

Scenario: Creating a new post with a set
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    * set payload
      |path  |       |
      |userId| 10    |
      |title |'Hello'|
      |body  |'World'|
    * print payload
    And request payload
    When method post
    Then status 201
    And match responseType == 'json'
    * payload.id = "#number"
    And match response == payload