package cucumber;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class IsItFridayStepDefinitions {
    private String today;
    private String actualAnswer;

    @Given("today is {string}")
    public void todayIsDay(final String day) {
        today = day;
    }

    @When("I ask whether it's Friday yet")
    public void iAskWhetherItsFridayYet() {
        actualAnswer = IsItFridayHelper.isItFriday(today);
    }

    @Then("I should be told {string}")
    public void i_should_be_told(String expectedAnswer) {
       Assert.assertEquals(expectedAnswer, actualAnswer);
    }

}
