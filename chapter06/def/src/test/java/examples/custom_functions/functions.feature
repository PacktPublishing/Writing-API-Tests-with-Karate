Feature: Custom functions
  Scenario: 
    * def greeter = function(title, name) { return 'hello ' + title + ' ' + name }
    * assert greeter('Mr.', 'Bob') == 'hello Mr. Bob'