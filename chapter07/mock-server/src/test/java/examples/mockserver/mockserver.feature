Feature: Feature

  Background:
    * def magicians = 
    """
      [
        {
          name: "Penn",
          id: 1
        },
        {
          name: "Teller",
          id: 2
        }
      ]
    """
    * json magicians = magicians

  Scenario: pathMatches('/magicians') && methodIs('get')
     * print "Get request to magicians"
     * def response = { content: #(magicians) }

  Scenario: pathMatches('magician/{index}')
    * def index = parseInt(pathParams.index)
    * print 'Get magician with index', index
    * def result = magicians[index]
    * print result
    * def responseDelay = 3000
    * def response = { content: #(result) }

  Scenario:
    * print 'Not supported', karate.prevRequest
    * def responseStatus = 404