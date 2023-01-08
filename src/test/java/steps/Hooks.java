package steps;

import io.cucumber.java.Before;

import static com.codeborne.selenide.Selenide.*;

public class Hooks {

    private static final String HOST = "http://localhost:";
    private static final int PORT = 7000;
    private static final String URL = HOST + PORT + "/login";

    @Before
    public void openUrl(){
        open(URL);
    }
}
