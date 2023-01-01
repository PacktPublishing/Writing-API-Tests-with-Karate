Feature: Karate object examples
  Scenario: Run only on Windows with abort
    * print karate.os
    * def isWindows = karate.os.type == "windows"
    * if (!isWindows) karate.abort()
    * print "I am running on Windows!"

  Scenario: Run only on Windows with failure
    * print karate.os
    * def isWindows = karate.os.type == "windows"
    * if (!isWindows) karate.fail("This is not windows!")
    * print "I am running on Windows!"

  Scenario: Get Java information
    * def javaInfo = karate.exec("java --version")
    * print javaInfo