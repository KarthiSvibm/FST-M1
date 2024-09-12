package Activity;

import org.testng.annotations.Test;

import io.github.bonigarcia.wdm.WebDriverManager;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Parameters;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterClass;

public class Activity6 {
	
	WebDriver driver;
  @Test
  @Parameters({ "Username", "Password" })
  public void f(String username, String Password) {
	  
	  WebElement usernameField = driver.findElement(By.id("username"));
      WebElement passwordField = driver.findElement(By.id("password"));
      WebElement button = driver.findElement(By.xpath("//button[text()='Log in']"));
      
      
      
      
      
	  
  }
  @BeforeClass
  public void beforeClass() {
	  
	  WebDriverManager.firefoxdriver().setup();
	  driver = new FirefoxDriver();
	  driver.get(" https://v1.training-support.net/selenium/login-form");  
  }

  @AfterClass
  public void afterClass() {
	  
	  driver.close();
  }

}
