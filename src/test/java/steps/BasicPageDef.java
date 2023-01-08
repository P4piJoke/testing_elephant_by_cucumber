package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pages.BasicPage;

public class BasicPageDef {

    private final BasicPage basicPage = new BasicPage();

    @Then("Click {string} button")
    public void clickButton(String buttonName) {
        basicPage.clickButton(buttonName);
    }

    @Then("Content with {string} visible")
    public void contentWithVisible(String content) {
        basicPage.contentIsVisible(content);
    }

    @Then("Current url changed to {string}")
    public void currentUrlChangedTo(String to) {
        basicPage.currentUrlChangedTo(to);
    }

    @Given("open elephant page {string}")
    public void openElephantPage(String page) {
        basicPage.openElephantPage(page);
    }

    @Then("Show message {string}")
    public void showMessage(String msg) {
        basicPage.showMessage(msg);
    }

    @And("Click {string} button a")
    public void clickButtonA(String button) {
        basicPage.clickButtonA(button);
    }

    @And("choose locale {string}")
    public void chooseLocale(String locale) {
        basicPage.chooseLocale(locale);
    }

    @Then("button a {string} visible")
    public void buttonAVisible(String button) {
        basicPage.buttonAVisible(button);
    }

    @Then("button {string} visible")
    public void buttonVisible(String button) {
        basicPage.buttonVisible(button);
    }

//    @Then("close browser")
//    public void closeBrowser() {
//        basicPage.closeBrowser();
//    }
}
