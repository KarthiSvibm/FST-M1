package activities;

import io.github.bonigarcia.wdm.WebDriverManager;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class activity2 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		
		//System.getProperty("webdriver.chrome.driver","C:/Users/RanjaniDhandapani/Downloads/chromedriver.exe");
		
		WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		
		driver.get("https://v1.training-support.net/selenium/login-form");
		System.out.print("main page title: " +driver.getTitle());
		//driver.findElement(By.name("Username")).sendKeys("admin");
		driver.findElement(By.xpath("//input[@placeholder='Username' ]")).sendKeys("admin");
		driver.findElement(By.id("password")).sendKeys("password");
		driver.findElement(By.xpath("//button[@onclick='signIn()']")).click();
		
		System.out.print("\nyour login is successfull");
		
		String message= driver.findElement(By.xpath("//div[@id='action-confirmation']")).getText();
		
		System.out.print("\n"+message);
		
		File screenhsot= ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		File savedScreenshot= new File ("src/test/resources/activity2ss.jpg");
		FileUtils.copyFile(screenhsot, savedScreenshot);
		
		
		driver.close();
		

	}

}
