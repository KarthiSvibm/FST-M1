package activities;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Activity8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(100));

		
		driver.get("https://v1.training-support.net/selenium/dynamic-controls");
		System.out.print("main page title: " +driver.getTitle());
		
		Actions builder = new Actions(driver);
		
		WebElement toggle= driver.findElement(By.id("toggleCheckbox"));
		

		
		builder.click(toggle).build().perform();
		
		//WebElement checkbox= driver.findElement(By.id("dynamicCheckbox"));
		
		WebElement check = driver.findElement(By.xpath("//input[@name='toggled']"));
		wait.until(ExpectedConditions.invisibilityOf(check));
		
		
		builder.click(toggle).build().perform();
		
		wait.until(ExpectedConditions.visibilityOf(check));
			
		check.click();
	
		System.out.println(  " \n is box checked :" +check.isSelected());
		   
		driver.close();
		
		
	
		
		
		

	}

}
