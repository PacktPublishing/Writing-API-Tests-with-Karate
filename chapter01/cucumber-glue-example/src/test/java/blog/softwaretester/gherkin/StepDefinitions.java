package blog.softwaretester.gherkin;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StepDefinitions {

    @Given("I am on the Webshop homepage")
    public void i_am_on_the_webshop_homepage() {
        System.out.println("Go to homepage");
    }

    @Given("I am logged in")
    public void i_am_logged_in() {
        System.out.println("Log in");
    }

    @When("I search for {string}")
    public void i_search_for_packt(final String searchTerm) {
        System.out.println("Search for " + searchTerm);
    }
    
    @Then("I get a list of items containing {string}")
    public void i_get_a_list_of_items_containing_packt_publishing(final String searchTerm) {
        System.out.println("Assert list with items containing " + searchTerm);
    }
}
