package activities;

import io.github.bonigarcia.wdm.WebDriverManager;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class activity1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver= new FirefoxDriver();
		
		driver.navigate().to("https://v1.training-support.net");
		System.out.print("main page title: " +driver.getTitle());
		
		driver.findElement(By.id("about-link")).click();
		System.out.print("\nsecond page title :" +driver.getTitle());
		
		
		
		
		
		

	}

}
