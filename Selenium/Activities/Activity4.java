package activities;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Activity4 {

	public static void main(String[] args) {
		
		WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		
		driver.get("https://v1.training-support.net/selenium/target-practice");
		System.out.print("main page title: " +driver.getTitle());
		
		String value1 =driver.findElement(By.xpath("//h3[@class='ui yellow header']")).getText();
		
		System.out.println(value1);
		      
		String value2 =driver.findElement(By.xpath("//h5[@class='ui green header']")).getCssValue("color");
		
		System.out.println(value2);
		
		String value3 =driver.findElement(By.xpath("//button[contains(text(),'Violet')]")).getAttribute("class");
		
		System.out.println(value3);
		
		String value4 =driver.findElement(By.xpath("//button[text()='Grey']")).getText();
		
		System.out.println(value4);
			
		driver.close();
		
		
		
		

	
		
		
		
		
		
		
	}

}
