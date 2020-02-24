package cucumber;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class BankTellerStepDefinitions {

    private Integer moneyInBank = 0;

    @Given("the user have {int} SEK")
    public void theUserHaveIntSek(final Integer amount) {
        moneyInBank = amount;
    }

    @When("the user deposits {int} SEK more")
    public void the_user_deposits_SEK_more(Integer amount) {
        moneyInBank += amount;
    }

    @When("the user withdraws {int} SEK")
    public void withdraws_SEK(Integer amount) {
        moneyInBank -= amount;
    }

    @Then("the user should have {int} SEK left")
    public void the_user_should_have_SEK_left(Integer amount) {
        Assert.assertEquals(moneyInBank, amount);
    }
}
