Feature: JSONPath

Scenario: JSONPath
  * def data =
  """
  {
      "magicians": [
        {
            "id":1,
            "name":"Harry Houdini",
            "birthyear":1874,
            "specialty":[
              "escapology",
              "card tricks"
            ]
        },
        {
            "id":2,
            "name":"David Copperfield",
            "birthyear":1956,
            "specialty":[
              "illusions"
            ]
        }
      ]
  }
  """
  * match data.magicians == '#[2]'
  * def name = get[0] data.magicians[?(@.id==2)].name
  * match name == 'David Copperfield'
  * def specialties = get[0] data.magicians[?(@.name == 'Harry Houdini')].specialty
  * match specialties == ['escapology', 'card tricks']