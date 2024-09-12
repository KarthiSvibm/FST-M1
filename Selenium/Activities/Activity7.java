package activities;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;

import io.github.bonigarcia.wdm.WebDriverManager;

public class activity7 {

	public static void main(String[] args) {
	
		
WebDriverManager.firefoxdriver().setup();
		
		WebDriver driver =new FirefoxDriver();
		
		driver.get("https://v1.training-support.net/selenium/drag-drop");
		System.out.print("main page title: " +driver.getTitle());
		
		Actions builder = new Actions(driver);
		
		WebElement ball= driver.findElement(By.id("draggable"));
		
		WebElement point1= driver.findElement(By.id("droppable"));
		
		WebElement point2= driver.findElement(By.id("dropzone2"));
		
		
		
		builder.clickAndHold(ball).moveToElement(point1).pause(1000).release().build().perform();
		builder.dragAndDrop(ball, point2).pause(1000).build().perform();
		
		driver.close();
		
		
		

	}

}
