Feature: UI test

  Scenario: Search for a blog post
    * configure driver = { type: 'chrome' }    
    Given driver 'https://softwaretester.blog'
    And driver.dimensions = {x: 0, y: 0, width: 1024, height: 768 }
    When input('.search-input', ['Magic', Key.ENTER])
    And waitForUrl('search/query:Magic')
    * karate.stop(10000)

