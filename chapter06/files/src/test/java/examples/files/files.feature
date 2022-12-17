Feature: Reading from files
  Scenario: Read JSON
    * def json = read('../json-example.json')
    * assert json.name == "Karate"
    * assert json.inception == 2017

  Scenario: Read XML
    * def xml = read('../xml-example.xml')
    * match xml.framework.name == "Karate"
    * assert xml.framework.inception == 2017
    
  Scenario: Read CSV
    * def csv = read("../csv-example.csv")
    * assert csv[0].name == "Karate"
    * assert csv[0].inception == 2017
  
  Scenario: Read YAML
    * def yaml = read('../yaml-example.yaml')
    * assert yaml.framework.name == "Karate"
    * assert yaml.framework.inception == 2017
    * match yaml == {'framework': {'name': 'Karate', 'inception': 2017}}

  Scenario: Convert YAML to JSON
    * text yaml =
      """
      publisher: Packt
      book:
        title: API testing with the Karate framework 
      """
    * yaml converted = yaml
    * print converted

  Scenario: Convert CSV to JSON
    * text csv =
      """
      publisher,book
      Packt,API testing with the Karate framework
      """
    * csv converted = csv
    * print converted

  Scenario: Read text
    * def text = read("../text-example.txt")
    * assert text == "Karate had its first release in 2017."

  Scenario: Read JavaScript
    * def jsFunctionFromFile = read("../js-example.js")
    * def text = jsFunctionFromFile('Karate', 2017)
    * assert text == "Karate had its first release in 2017."

  Scenario: Read JavaScript multiple methods
    * def f = read("../js-example2.js")
    * def text = f().getRelease('Karate', 2017)
    * print text
    * def number = f().secondMethod()
    * print number

  Scenario: Methods from karate-config.js
    * def f1 = function1()
    * print f1
    * print function2()