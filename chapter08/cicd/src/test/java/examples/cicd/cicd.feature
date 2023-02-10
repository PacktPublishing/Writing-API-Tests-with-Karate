Feature: CI/CD

  Scenario: MySQL access
    * def getMagicians =
      """
      function() {
        var MySQL = Java.type('db.MySQL');
        var mySQL = new MySQL(host, db, pass);
        return mySQL.getMagicians();
      }      
      """
    * json magicians = getMagicians()
    * print magicians[0]
