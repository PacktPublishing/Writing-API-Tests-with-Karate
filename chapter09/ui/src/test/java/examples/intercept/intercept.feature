Feature: Intercept test

  Scenario: Inject custom products
    * configure driver = { type: 'chrome' }
    * driver 'https://www.demoblaze.com'
    * driver.intercept({ patterns: [{ urlPattern: '*/entries' }], mock: 'products.feature' })
    * karate.stop(5555)