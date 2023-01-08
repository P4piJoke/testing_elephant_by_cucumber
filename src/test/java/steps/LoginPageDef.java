package steps;

import io.cucumber.java.en.Then;
import pages.LoginPage;

public class LoginPageDef {

    private final LoginPage loginPage = new LoginPage();

    @Then("Input login {string}")
    public void inputLogin(String login) {
        loginPage.inputLogin(login);
    }

    @Then("Input password {string}")
    public void inputPassword(String password) {
        loginPage.inputPassword(password);
    }

    @Then("Input conformation {string}")
    public void inputConformation(String password){
        loginPage.inputConformation(password);
    }

    @Then("Input email {string}")
    public void inputEmail(String email) {
        loginPage.inputEmail(email);
    }
}
