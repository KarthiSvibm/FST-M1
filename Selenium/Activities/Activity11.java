package activities;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Activity11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		WebDriver driver =new FirefoxDriver();
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(100));

		
		driver.get("https://v1.training-support.net/selenium/dynamic-controls");
		System.out.print("main page title: " +driver.getTitle());
		WebElement checkbox = driver.findElement(By.name("toggled"));
		
		checkbox.click();
		
		System.out.println("\nCheckbox is selected: " + checkbox.isSelected());
		
		checkbox.click();
		
		System.out.println("Checkbox is selected: " + checkbox.isSelected());
		
		driver.close();
		
		
		
	}

}
