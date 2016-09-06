package de.hablijack.eilkurier.acceptance;

import static com.codeborne.selenide.Condition.exist;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.phantomjs.PhantomJSDriver;

import com.codeborne.selenide.WebDriverRunner;

import io.github.bonigarcia.wdm.PhantomJsDriverManager;

public class FirstTest {
    @BeforeClass
    public static void setupClass() {
        PhantomJsDriverManager.getInstance().setup();
        WebDriverRunner.setWebDriver(new PhantomJSDriver());
    }

    @Test
    public void search_selenide_in_google() {
        open("http://localhost:8080");
        $("#brand img").should(exist);
    }
}