Feature: Karate object examples
  Scenario: Run only on Windows
    * def isWindows = karate.os.type == "windows"
    * if (!isWindows) karate.abort("Not running on windows")
    * print "I am running on Windows!"

  Scenario: Get Java information
    * def javaInfo = karate.exec("java --version")
    * print javaInfo