Feature: UI test

  Scenario: Search for a blog post
    * configure driver = { type: 'chrome' }    
    Given driver 'https://softwaretester.blog'
    And driver.dimensions = {x: 0, y: 0, width: 1024, height: 768 }
    When input('.search-input', ['Magic', Key.ENTER])
    And waitForUrl('search/query:Magic')
    
    * karate.stop(10000)

  Scenario: Add laptop to shopping cart
    * configure driver = { type: 'chrome' }
    Given driver 'https://www.demoblaze.com'
    And driver.dimensions = {x: 0, y: 0, width: 1024, height: 768 }
    And waitForEnabled('{a}Monitors').click()
    * waitForUrl('/#')
    And waitForEnabled('div.card a').click()
    * def productName = text('.myClass')
    * print productName
    And click()
    And waitForEnabled('div.asddad').click()

    * karate.stop(5000)
