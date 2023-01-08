package steps;

import config.UserConfig;
import io.cucumber.java.en.Then;
import pages.LoginPage;

public class LoginPageDef {

    private final LoginPage loginPage = new LoginPage();

    @Then("Input login")
    public void inputLogin(){
        loginPage.inputLogin(UserConfig.USER_LOGIN);
    }

    @Then("Input password")
    public void inputPassword(){
        loginPage.inputPassword(UserConfig.USER_PASSWORD);
    }
}
