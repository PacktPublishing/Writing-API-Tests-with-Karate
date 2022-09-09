Feature: Webshop tests

	@smoketest
	Scenario: Product search works as expected
		Given I am on the Webshop homepage
		And I am logged in
		When I search for 'Packt'
		Then I get a list of items containing 'Packt'