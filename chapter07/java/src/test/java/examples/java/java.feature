Feature: Java

  Scenario: Simple Java access
    * def Paths = Java.type('java.nio.file.Paths')
    * def currentPath = Paths.get(".").toAbsolutePath()
    * print currentPath

  Scenario: MySQL access
    * def getMagicians =
      """
      function() {
        var MySQL = Java.type('db.MySQL');
        var mySQL = new MySQL();
        return mySQL.getMagicians();
      }      
      """
    * json magicians = getMagicians()
    * print magicians[2].birthyear
