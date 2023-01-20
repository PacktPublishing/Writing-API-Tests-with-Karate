Feature: Testing a mock server
    Background:
        * def start = () => karate.start('mocks.feature').port
        * def port = callonce start
        * url 'http://localhost:' + port

    Scenario: Get all magicians
        When path 'magicians'
        And method get
        Then match responseStatus == 200

    Scenario: Get one magician
        When path 'magician/2'
        And method get
        * match response.name == 'Teller'

    Scenario: Unavailable id
        When path 'magician/123'
        And method get
        Then match responseStatus == 204

    Scenario: Unavailable endpoint
        When path 'rabbits'
        And method get
        Then match responseStatus == 500