package activities;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Activity10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		WebDriver driver =new FirefoxDriver();
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(100));

		
		driver.get("https://v1.training-support.net/selenium/dynamic-controls");
		System.out.print("main page title: " +driver.getTitle());
		
		WebElement check =driver.findElement(By.name("toggled"));
	
		if (check.isEnabled()) {
			System.out.println("\ncheckbox is enabled");
		}
		else {
			System.out.println("\ncheckbox is not enabled");
		}
		
		
		WebElement check2 = driver.findElement(By.id("toggleCheckbox"));
		
		if (check2.isEnabled()) {
			System.out.println("checkbox2 is enabled");
		}
		else {
			System.out.println("checkbox2 is not enabled");
		}
		
		
		
		
		driver.close();
		
		
		
		
	}

}
