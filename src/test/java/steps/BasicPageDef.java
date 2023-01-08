package steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pages.BasicPage;

public class BasicPageDef {

    private final BasicPage basicPage = new BasicPage();
    private final String homeRedirect = "http://localhost:7000/home";

    @Then("Click {string} button")
    public void clickButton(String buttonName){
        basicPage.clickButton(buttonName);
    }

    @Then("Content with {string} visible")
    public void contentWithVisible(String content) {
        basicPage.contentIsVisible(content);
    }

    @Then("Current url changed to {string}")
    public void currentUrlChangedTo(String to) {

    }

    @Given("open elephant page {string}")
    public void openElephantPage(String page) {
        basicPage.openElephantPage(page);
    }
}
