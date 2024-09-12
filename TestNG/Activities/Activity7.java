package Activity;

import org.testng.annotations.Test;

import io.github.bonigarcia.wdm.WebDriverManager;

import org.testng.annotations.BeforeMethod;
import org.testng.annotations.DataProvider;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;

public class Activity7 {
	
	WebDriver driver;

	
	
 @BeforeClass
	    public void beforeClass() {
	      
	 WebDriverManager.firefoxdriver().setup();
	  driver = new FirefoxDriver();
	        driver.get("https://v1.training-support.net/selenium/login-form");
	    }
	    
	    @DataProvider(name = "Authentication")
	    public static Object[][] credentials() {
	        return new Object[][] 
	        		{ 
	        	{ "admin", "password","Welcome Back, admin" },
	        	{"wrongAdmin","wrongPassword","Invalid Credentials"}
	        	
	        		
	        		
	        		};
	    }
	    
	    @Test (dataProvider = "Authentication")
	    public void loginTestCase(String username, String password, String Message) {
	     
	        WebElement usernameField = driver.findElement(By.id("username"));
	        WebElement passwordField = driver.findElement(By.id("password"));
	        WebElement button = driver.findElement(By.xpath("//button[text()='Log in']"));
	        
	        usernameField.clear();
	        passwordField.clear();
	      
	        usernameField.sendKeys(username);
	        passwordField.sendKeys(password);
	        button.click();
	        
	        
	        //Assert Message
	        String loginMessage = driver.findElement(By.id("action-confirmation")).getText();
	                                                                       
	    }
	 
	    @AfterClass
	    public void afterClass() {
	        //Close browser
	        driver.close();
	    }
	 

}
