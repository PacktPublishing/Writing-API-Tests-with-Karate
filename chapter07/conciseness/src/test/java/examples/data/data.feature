Feature: Data-driven testing
    Scenario: Feature in variable
    * table animals
      | animal | name    |
      | 'cat'  | 'Ginny' |
      | 'dog'  | 'Eamon' |
    * def animalsWithTitles = call read('animals.feature') animals
    * print animalsWithTitles
    * def onlyTitles = $animalsWithTitles[*].title
    * print onlyTitles