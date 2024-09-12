package activities;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Activity18 {

	public static void main(String[] args) {
WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		
		driver.get("https://v1.training-support.net/selenium/selects");
		System.out.print("main page title: " +driver.getTitle());
		
		WebElement dropdownvalue= driver.findElement(By.id("multi-select"));
		
	Select value= new Select (dropdownvalue);
	
          value.selectByVisibleText("Javascript");
System.out.println("\nfirst option :"  +value.getFirstSelectedOption().getText());


for (int i=4 ; i<=6; i++)
{
	value.selectByIndex(i) ;
	
}
	value.selectByValue("node");
	System.out.println("\nThird option :"  +value.getFirstSelectedOption().getText());
	
	List<WebElement> selectedOptions = value.getAllSelectedOptions() ;       
	
	for (WebElement all:selectedOptions) {
	
		System.out.println("all options:" +all.getText());
	}
	
	value.deselectByIndex(5);
	
	selectedOptions = value.getAllSelectedOptions() ; 
	

	for (WebElement all:selectedOptions) {
	
		System.out.println("all options:" +all.getText());
	}

	}
}


