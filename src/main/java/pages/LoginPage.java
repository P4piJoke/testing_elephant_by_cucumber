package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;


public class LoginPage {
    private final SelenideElement loginInput = $(By.name("login"));
    private final SelenideElement passwordInput = $(By.name("password"));
    private final SelenideElement conformationInput = $(By.name("conformation"));
    private final SelenideElement emailInput = $(By.name("email"));

    public void inputLogin(String login){
        this.loginInput.setValue(login);
    }

    public void inputPassword(String password){
        this.passwordInput.setValue(password);
    }

    public void inputConformation(String password) {
        this.conformationInput.setValue(password);
    }

    public void inputEmail(String email) {
        this.emailInput.setValue(email);
    }
}
