Feature: Retrying requests
    Scenario: Retry based on status
        Given url 'https://jsonplaceholder.typicode.com/todos/1'
        And retry until responseStatus == 200
        When method get
        
    Scenario: Retry based on custom condition
        Given url 'https://jsonplaceholder.typicode.com/todos/1'
        * configure retry = { count: 2, interval: 5000 }
        And retry until response.userId == 1 && response.name == "test"
        When method get