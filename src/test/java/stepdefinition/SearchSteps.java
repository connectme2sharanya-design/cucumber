package stepdefinition;
import io.cucumber.java.en.*;

public class SearchSteps {

    @Given("I am on the search field of amazon.com")
    public void i_am_on_the_search_field_of_amazon_com() {
        System.out.println("Step 1: Given I am on the search field of amazon.com");
    }
    @When("I search for a product {string} with price {int}")
    public void i_search_for_a_product_with_price(String productname, Integer price) {
        System.out.println("Step 2: When I search for a " + productname + " with price " +price);
    }
    @Then("I should see {string} is displayed")
    public void i_should_see_is_displayed(String productname) {
       System.out.println("Step 3: Then I should see " + productname+" is displayed");

    }
}
