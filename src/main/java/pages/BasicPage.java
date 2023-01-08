package pages;

import com.codeborne.selenide.Condition;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static com.codeborne.selenide.Selenide.webdriver;
import static com.codeborne.selenide.WebDriverConditions.url;

public class BasicPage {

    public void clickButton(String buttonName) {
        $(By.xpath("//button[text()='" + buttonName + "']")).click();
    }

    public void contentIsVisible(String content) {
        $(By.xpath("//span[text()='" + content + "']")).shouldBe(Condition.visible);
    }

    public void currentUrlChangedTo(String to) {
        webdriver().shouldHave(url(to));
    }

    public void openElephantPage(String page) {
        open(page);
    }

    public void showMessage(String msg) {
        $(By.xpath("//div[contains(string(), \"" + msg + "\")]")).shouldBe(Condition.visible);
    }

    public void clickButtonA(String button) {
        $(By.xpath("//a[contains(string(), \"" + button + "\")]")).click();
    }

    public void chooseLocale(String locale) {
        clickButtonA(locale);
    }

    public void buttonAVisible(String button) {
        $(By.xpath("//a[contains(string(), \"" + button + "\")]")).shouldBe(Condition.visible);
    }

    public void buttonVisible(String button) {
        $(By.xpath("//button[contains(string(), \"" + button + "\")]")).shouldBe(Condition.visible);
    }

//    public void closeBrowser() {
//        closeWebDriver();
//    }
}
