package pages;

import com.codeborne.selenide.Condition;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class BasicPage {

    public void clickButton(String buttonName) {
        $(By.xpath("//button[text()='" + buttonName + "']")).click();
    }

    public void contentIsVisible(String content) {
        $(By.xpath("//span[text()='" + content + "']")).shouldBe(Condition.visible);
    }

    public void openElephantPage(String page){
        open(page);
    }
}
