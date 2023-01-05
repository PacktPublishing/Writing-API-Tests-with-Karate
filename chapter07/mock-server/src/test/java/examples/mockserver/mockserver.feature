Feature: Feature

  Scenario: pathMatches('/magicians') && methodIs('get')
     * print "Get request to magicians"
     * def response = { content: 'Magicians' }

  Scenario: pathMatches('magician/{id}')
    * def id = pathParams.id
    * print 'Get magician with id', id
    * def responseDelay = 5000
    * def content =
    """
      {
        name: "Teller",
        birthyear: 1948,
        id: #(id)
      }
    """
    * def response = { content: #(content) }

  Scenario:
    * print 'Not supported', karate.prevRequest
    * def responseStatus = 404