Feature: Mock server

  Background:
    * def magicians = 
    """
      [
        { id: 1, name: "Penn" },
        { id: 2, name: "Teller" }
      ]
    """
    * json magicians = magicians

  Scenario: pathMatches('/magicians') && methodIs('get')
     * def response = magicians

  Scenario: pathMatches('magician/{id}') && methodIs('get')
    * def index = parseInt(pathParams.id) - 1
    * def isValid = index > -1 && index < magicians.length 
    * def responseDelay = 3000
    * def response = isValid ? magicians[index] : ''
    * def responseStatus = isValid ? 200 : 204

  Scenario:
    * def responseStatus = 500