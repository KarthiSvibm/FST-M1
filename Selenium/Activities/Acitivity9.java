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

public class Acitivity9 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(100));

		
		driver.get("https://v1.training-support.net/selenium/ajax");
		System.out.print("main page title: " +driver.getTitle());
		
		
		
		
		driver.findElement(By.xpath("//button[@class='ui violet button']")).click();
		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")));
		
		String first = driver.findElement(By.tagName("h1")).getText();
		
		System.out.println("\ntext:"+first);
		
wait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h3")));
		
		String second  = driver.findElement(By.tagName("h3")).getText();
		
		System.out.println("text:"+second);
		
		
		
		
		
		
		
		
		
		

	}

}
