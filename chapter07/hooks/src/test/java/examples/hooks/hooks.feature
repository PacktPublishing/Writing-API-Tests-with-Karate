Feature: Hooks

  Background:
    * configure afterScenario = function(){ karate.log(karate.scenario.name + ' finished!') }
    * configure afterFeature = function(){ karate.log(karate.feature.fileName + ' finished!') }

  Scenario: Hooks demo
    * print "This is step 1"
    * print "This is step 2"
    * match 1 == 2
