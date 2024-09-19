package examples;

import static io.restassured.RestAssured.given;
import io.restassured.response.Response;
import org.testng.annotations.Test;
import org.testng.Assert;
import static org.hamcrest.Matchers.equalTo;




public class FirstTest {
	// GET https://petstore.swagger.io/v2/pet/findByStatus?status=alive
	@Test
	public void getRequestwithQueryParm() {
		Response response = 
				given()
				.baseUri("https://petstore.swagger.io/v2/pet")
				.header("Content-Type", "application/json")
				.queryParam("status", "alive")
			.when()
				.get("/findByStatus");
		// print the Response Body
		System.out.println("Full Body: " + response.getBody());
		System.out.println("-----------------------------------");
		System.out.println("String Body: " + response.getBody().asString());
		System.out.println("-----------------------------------");
		System.out.println("Pretty String Body: " + response.getBody().asPrettyString());
		System.out.println("-----------------------------------");
		// print the Response Headers
		System.out.println("Headers: " + response.getHeaders());
		System.out.println("-----------------------------------");
		
		// Extract values from Response
		String petStatus = response.then().extract().path("[0].status");
		System.out.println("petStatus of 0: " + petStatus);
		
		//Asserting
		Assert.assertEquals(petStatus, "alive");
		//RestAssured Assertion
		response.then().body("[0].status", equalTo("alive"));
		//RestAssured Assertion with response code check
		response.then().statusCode(200).body("[0].status", equalTo("alive"));
		System.out.println("-----------------------------------");
	}
	
	
	// GET https://petstore.swagger.io/v2/pet/{petId}
	@Test
	public void getRequestwithPathParm() {
		//send a request, get response and assert the result
		given()
			.baseUri("https://petstore.swagger.io/v2/pet")
			.header("Content-Type", "application/json")
			.pathParam("petId", 77232)
			.log().all()
		.when()
			.get("/{petId}")
		.then()
			.statusCode(200)
			.body("name", equalTo("Riley"))
			.body("status", equalTo("alive"))
			.log().all();
	}
}
