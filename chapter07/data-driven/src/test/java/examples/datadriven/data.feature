Feature: Data-driven testing
    Scenario: Feature in variable
    * table animals
      | animal | name    |
      | 'cat'  | 'Ginny' |
      | 'dog'  | 'Eamon' |
    * def animalsWithTitles = call read('animal-title.feature') animals
    * print animalsWithTitles
    * def onlyTitles = $animalsWithTitles[*].title
    * print onlyTitles

    Scenario Outline: JSON in data table
        * def color = traits.color
        * print '<name> is', color
        Examples:
            | name   | traits!          |
            | Eamon  | {color: 'red'}   |
            | Ginny  | {color: 'black'} |

    Scenario Outline: Data from file
        * print name, 'is', color
        Examples:
            | read('animals.json') |

    @setup
    Scenario:
        * def animals = read('animals.json')

    Scenario Outline: Data from file
        * print name, 'is', color
        Examples:
            | karate.setup().animals |
