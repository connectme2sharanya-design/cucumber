
package stepdefinition;

import io.cucumber.java.en.*;

public class ContactUsSteps {

    @When("I click on the contact-us link and enter the following details")
    public void i_click_on_the_contact_us_link_and_enter_the_following_details(String docString) {
        System.out.println("Step 2:");
        System.out.println(docString);
    }

    @Then("I should see {string} messsage")
    public void i_should_see_messsage(String status) {
        System.out.println("Step 3: Then I see the message "+status+" is displayed");
    }
}
