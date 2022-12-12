Feature: Reading from files
  Scenario: Read JSON
    * def json = read('../json-example.json')
    * assert json.name == "Karate"
    * assert json.inception == 2017

  Scenario: Read XML
    * def xml = read('../xml-example.xml')
    * assert xml.framework.name == "Karate"
    * assert xml.framework.inception == 2017
    
  Scenario: Read CSV
    * def csv = read("../csv-example.csv")
    * assert csv[0].name == "Karate"
    * assert csv[0].inception == 2017
    
  Scenario: Read text
    * def text = read("../text-example.txt")
    * assert text == "Karate had its first release in 2017."

  Scenario: Read Javascript
    * def jsFunctionFromFile = read("../javascript-example.js")
    * def text = jsFunctionFromFile("Karate", 2017)
    * assert text == "Karate had its first release in 2017."