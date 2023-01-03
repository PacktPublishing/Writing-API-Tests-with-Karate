Feature: Feature

  Scenario: pathMatches('/magicians') && methodIs('get')
     * print "Get request to magicians"
     * def response = { content: 'Magicians' }

  Scenario: pathMatches('magician') && paramExists('id')
    * def id = paramValue('id')
    * print "Get magician with id ", id
    * def responseDelay = 3000
    * def response = { id: #id, content: 'Magician' }

  Scenario:
    * print 'No dedicated scenario matches incoming request.'
    * print 'With Headers:'
    * print requestHeaders
    * print 'With Request Parameters'
    * print requestParams
    * print 'And Request:'
    * print request