Feature: Testing a mock server
    Background:
        * def start = () => karate.start('mockserver.feature').port
        * def port = callonce start
        * url 'http://localhost:' + port

    Scenario: Test mock server
        When path 'magicians'
        And method get
        * print response

    Scenario: Test mock server
        When path 'magicians'
        And method get
        * print response