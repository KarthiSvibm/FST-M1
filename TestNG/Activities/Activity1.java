package Activity;

import org.testng.annotations.Test;

import io.github.bonigarcia.wdm.WebDriverManager;

import org.testng.annotations.BeforeClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterClass;

public class Activity1 {
	
	WebDriver driver;
	
	
	
 
  @BeforeClass
  public void setup() {
	  
	  WebDriverManager.firefoxdriver().setup();
	  driver = new FirefoxDriver();
	  driver.get("https://v1.training-support.net");  
  }
  @Test(priority=1)
  public void homepagetest() {
	  
	  System.out.println("Title of home page:" +driver.getTitle());
	   
	  
  }
  
  @Test(priority=2)
  public void aboutpagetest() {
	  
	  System.out.println("Title of home page:" +driver.getTitle());  
	  
  }
  
  
  
  
  @AfterClass
  public void afterClass() {
	  driver.close();
  }

}
