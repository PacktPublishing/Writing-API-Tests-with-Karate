package blog.softwaretester.gherkin;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StepDefinitions {

    @Given("I am on the Webshop homepage")
    public void goToHomepage() {
        System.out.println("Go to homepage");
    }

    @Given("I am logged in")
    public void isLoggedIn() {
        System.out.println("Log in");
    }

    @When("I search for {string}")
    public void search(final String searchTerm) {
        System.out.println("Search for " + searchTerm);
    }
    
    @Then("I get a list of items containing {string}")
    public void itemsContain(final String searchTerm) {
        System.out.println("Assert list with items containing " + searchTerm);
    }
}
