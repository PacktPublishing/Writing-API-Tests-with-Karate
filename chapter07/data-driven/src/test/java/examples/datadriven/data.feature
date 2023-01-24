Feature: Data-driven testing
    Scenario Outline: Normal outline
        * print '<name>'
        Examples:
            | name   |
            | Eamon  |
            | Ginny  |

    Scenario Outline: Data from file
        * print name, 'is', color
        Examples:
            | read('animals.json') |
    
    Scenario Outline: JSON in data table
        * def color = traits.color
        * print '<name> is', color
        Examples:
            | name   | traits!          |
            | Eamon  | {color: 'red'}   |
            | Ginny  | {color: 'black'} |
    
    Scenario: Feature in variable
        * table animals
        | animal | name    |
        | 'cat'  | 'Ginny' |
        | 'dog'  | 'Eamon' |
        * def animalsWithTitles = call read('animal-title.feature') animals
        * print animalsWithTitles
        * def onlyTitles = $animalsWithTitles[*].title
        * print onlyTitles

    Scenario: Read from karate-config.js
        * print bird.title

    @setup
    Scenario:
        * def animals = read('animals.json')

    Scenario Outline: Data from file
        * print name, 'is', color
        Examples:
            | karate.setup().animals |