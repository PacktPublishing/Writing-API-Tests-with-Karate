Feature: Conciseness

  Scenario: Access the name automatically
    * def name = "Benjamin"
    * call read('sayhello.feature')

  Scenario: Pass name as param
    * def params = {name: "Anne"}
    * call read('sayhello.feature') params

  Scenario: Passing the JSON structure
    * def params = {name: "Frida"}
    * call read('sayhelloArg.feature') params
