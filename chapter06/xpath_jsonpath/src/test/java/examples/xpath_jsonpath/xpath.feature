Feature: XPath

Scenario: XPath
  * def data =
  """
  <magicians>
    <magician id="1">
      <name>Harry Houdini</name>
      <birthyear>1874</birthyear>
      <specialty>escapology</specialty>
      <specialty>card tricks</specialty>
    </magician>
    <magician id="2">
      <name>David Copperfield</name>
      <birthyear>1956</birthyear>
      <specialty>illusions</specialty>
    </magician>
  </magicians>
  """
  * match data count(/magicians/magician) == 2
  * match data //magician[@id='2']/name == 'David Copperfield'
  * def name = get data //magician[@id='2']/name
  * print "Magician with id 2 is", name
  * match data //magician[name = 'Harry Houdini']/specialty == ['escapology', 'card tricks']
