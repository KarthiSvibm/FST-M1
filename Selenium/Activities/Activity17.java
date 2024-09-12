package activities;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Activity17 {

	public static void main(String[] args) {


WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		
		driver.get("https://v1.training-support.net/selenium/selects");
		System.out.print("main page title: " +driver.getTitle());
		
		WebElement dropdownvalue= driver.findElement(By.xpath("//select"));
		
		Select list =new Select (dropdownvalue);
		
		list.selectByVisibleText("Option 2");
		System.out.println("\nfirst time selected option: " + list.getFirstSelectedOption().getText());
		
		list.selectByIndex(3);
		System.out.println("\nsecond time selected  option: " + list.getFirstSelectedOption().getText());
		
		list.selectByValue("4");
		
		System.out.println("\nthird time selected  option: " + list.getFirstSelectedOption().getText());
		
		
		List<WebElement> allOptions = list.getOptions();
        System.out.println("Options in the dropdown: ");
        
        
        for(WebElement option : allOptions) {
            System.out.println(option.getText());
        }

        // Close the browser
        driver.quit();
    }
		
		
		
		
		
		
		
		
		

	}


