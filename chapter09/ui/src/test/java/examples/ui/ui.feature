Feature: UI test

  Scenario: Wait for URL
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
    * match productName == 'Apple monitor 24'

  Scenario: Working with lists
    * configure driver = { type: 'chrome' }
    Given driver 'https://computer-database.gatling.io/'
    * driver.maximize()
    When input('#searchbox', 'macbook')
    And click('#searchsubmit')
    * def resultRows = locateAll('table.computers tr')
    * print resultRows
    * assert karate.sizeOf(resultRows) > 0
    * karate.stop(1234)