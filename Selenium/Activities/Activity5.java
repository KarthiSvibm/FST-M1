package activities;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Activity5 {

	public static void main(String[] args) {
WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		
		driver.get("https://v1.training-support.net/selenium/input-events");
		System.out.print("main page title: " +driver.getTitle());
		   Actions builder = new Actions(driver);
		
		 builder.click().pause(1000).build().perform();
	        String leftclick = driver.findElement(By.className("active")).getText();
	        System.out.println("\nicon1:" +leftclick);
	        
	        builder.click().pause(1000).build().perform();
	        String  rightclick= driver.findElement(By.className("active")).getText();
	        System.out.println("icon2:" + rightclick);
	        
	        
	        builder.click().pause(1000).build().perform();
	        String  random= driver.findElement(By.className("active")).getText();
	        System.out.println("icon3:" + rightclick);
		
		
		
		

	}

}
