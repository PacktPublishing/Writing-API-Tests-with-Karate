Feature: Posts endpoint tests
Scenario: Checking the number of posts
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method get