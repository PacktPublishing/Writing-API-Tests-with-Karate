Feature: UI test

  Scenario: First test
    * configure driver = { type: 'chrome' }
    Given driver 'https://softwaretester.blog'
    When input('.search-input', ['Magic', Key.ENTER])
    And waitForUrl('search/query:Magic')

  Scenario: Check product name
    * configure driver = { type: 'chrome' }
    Given driver 'https://www.demoblaze.com'
    And driver.dimensions = {x: 0, y: 0, width: 1024, height: 768 }
    And waitForEnabled('{a}Monitors').click()
    * waitForUrl('/#')
    And waitForEnabled('div.card a').click()
    * def productName = text('h2.name')
    * print 'Product', productName
    * match productName == 'Apple monitor 242'

  Scenario: Working with element lists
    * configure driver = { type: 'chrome' }
    Given driver 'https://computer-database.gatling.io/'
    * driver.maximize()
    * def searchTerm = 'MacBook'
    When input('#searchbox', searchTerm)
    And click('#searchsubmit')
    * def resultRows = locateAll('table.computers tbody tr')
    * assert karate.sizeOf(resultRows) > 0
    * def computers = []
    * def getNames = function(row) { karate.appendTo(computers, row.children[0].text) }
    * karate.forEach(resultRows, getNames)
    * match each computers contains 'MacBook'
    * karate.stop(1234)