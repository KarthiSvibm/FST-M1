package activities;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		WebDriver driver =new FirefoxDriver();
		driver.get("https://v1.training-support.net/selenium/dynamic-controls");
		System.out.print("main page title: " +driver.getTitle());
		WebElement textbox=driver.findElement(By.id("input-text"));
		
		if (textbox.isEnabled()) {
			System.out.println("\ntextbox is enabled");
		}
		else {
			System.out.println("\ntextbox is not enabled");
		}
				
		driver.findElement(By.id("toggleInput")).click();
		
		if (textbox.isEnabled()) {
			System.out.println("textbox is enabled");
			//textbox.sendKeys("entered some value to chekc if it enabled");
		}
		else {
			System.out.println("textbox is not enabled");
		}
		
		
		
	driver.close();	
		

	}

}
