package examples;

import java.util.HashMap;
import java.util.Map;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.builder.ResponseSpecBuilder;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import io.restassured.specification.ResponseSpecification;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.lessThanOrEqualTo;
import static io.restassured.RestAssured.given;



public class SpecificationTest {
	RequestSpecification requestSpec;
	ResponseSpecification responseSpec;
	int petId;
	
	@BeforeClass
	public void setUp() {
		requestSpec = new RequestSpecBuilder()
				.setBaseUri("https://petstore.swagger.io/v2/pet")
				.addHeader("Content-Type", "application/json")
				.build();
				//to add authorization
				//.addHeader("Authorization", "token ghp_tokenvalue")
				//.setAuth(RestAssured.oauth2("token value"))
				//.setAuth(RestAssured.ntlm(""))
				//.setAuth(RestAssured.basic("")) //very basic but not secure
		responseSpec = new ResponseSpecBuilder()
				.expectStatusCode(200)
				.expectBody("status", equalTo("alive"))
				.expectResponseTime(lessThanOrEqualTo(3000L))
				.build();
	}
		
	@Test(priority = 1)
	public void postRequest() {
		//creating request body
		Map<String, Object> reqBody = new HashMap<String, Object>();
		reqBody.put("id", 112233);
		reqBody.put("name", "Bheem");
		reqBody.put("status", "alive");
		
		//sending the request and saving it
		Response response =
				given().spec(requestSpec).body(reqBody)
				.when().post();
		
		//Extracting the ID
		petId = response.then().extra().path("Id");
		response.then().spec(responseSpec).body("name", equalTo("Bheem"));
	}
	
	@Test(priority = 2)
	public void getRequest() {
		given().spec(requestSpec).pathParam("petId", 112233)
		.when().get("/{petId}")
		.then().spec(responseSpec)
		.body("status", equalTo("alive"));
	}
		

}

