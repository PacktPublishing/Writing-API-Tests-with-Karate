@ignore
Feature:

  Background:
    * configure cors = true

  Scenario: pathMatches('/entries')
    * def response = read('products.json')