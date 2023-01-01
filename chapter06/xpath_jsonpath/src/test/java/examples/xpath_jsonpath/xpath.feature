Feature: XPath

Scenario: XPath
  * def magicians =
  """
  <magicians>
    <magician id="1">
      <name>Harry Houdini</name>
      <birthyear>1874</birthyear>
      <specialty>escapology</specialty>
    </magician>
    <magician id="2">
      <name>David Copperfield</name>
      <birthyear>1956</birthyear>
      <specialty>illusions</specialty>
    </magician>
    <magician id="3">
      <name>Teller</name>
      <birthyear>1948</birthyear>
      <specialty>illusions</specialty>
    </magician>
  </magicians>
  """
  * match magicians count(/magicians//magician) == 3
  * match magicians //magician[id="2"]//name == "David Copperfield"