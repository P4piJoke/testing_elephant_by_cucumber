package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;


public class LoginPage {
    private final SelenideElement loginInput = $(By.name("login"));
    private final SelenideElement passwordInput = $(By.name("password"));

    public void inputLogin(String login){
        this.loginInput.setValue(login);
    }

    public void inputPassword(String password){
        this.passwordInput.setValue(password);
    }
}
