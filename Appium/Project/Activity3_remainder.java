package Project;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.options.UiAutomator2Options;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;

public class Activity3_remainder {

    AndroidDriver driver;
    WebDriverWait wait;

    @BeforeClass
    public void setUp() throws MalformedURLException {
        UiAutomator2Options caps = new UiAutomator2Options()
                .setPlatformName("android")
                .setAutomationName("UiAutomator2")
                .setAppPackage("com.google.android.keep")
                .setAppActivity(".activities.BrowseActivity")
                .noReset();

        URL serverURL = new URL("http://localhost:4723/");

        driver = new AndroidDriver(serverURL, caps);
        wait = new WebDriverWait(driver, Duration.ofSeconds(30));
    }

    @Test
    public void addNoteReminder() throws InterruptedException {
        driver.findElement(AppiumBy.accessibilityId("New text note")).click();
        wait.until(ExpectedConditions.presenceOfElementLocated(AppiumBy.id("com.google.android.keep:id/edit_note_text")));
        
        driver.findElement(AppiumBy.id("com.google.android.keep:id/editable_title")).sendKeys("Activity");
        Thread.sleep(5000);
        driver.findElement(AppiumBy.id("com.google.android.keep:id/edit_note_text")).sendKeys("Complete Activity with Google Keep");
        driver.findElement(AppiumBy.accessibilityId("Reminder")).click();
        Thread.sleep(1000);
        driver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"Tomorrow morning\")")).click();
        wait.until(ExpectedConditions.presenceOfElementLocated(AppiumBy.accessibilityId("Time reminder Tomorrow, 8:00 AM")));
       
        driver.findElement(AppiumBy.accessibilityId("Navigate up")).click();
        Assert.assertEquals(driver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"Activity\")")).getText(), "Activity");
        Assert.assertEquals(driver.findElement(AppiumBy.xpath("/android.widget.TextView[@resource-id=\"com.google.android.keep:id/index_note_text_description\" and @text=\"Complete Activity with Google Keep\"]")).getText(), "Complete Activity with Google Keep");
        Assert.assertEquals(driver.findElement(AppiumBy.xpath("//android.widget.TextView[@resource-id=\"com.google.android.keep:id/reminder_chip_text\"]")).getText(), "Tomorrow, 8:00 AM");
        
        
    }
    

    @AfterClass
    public void tearDown() {
        driver.quit();
    }
}