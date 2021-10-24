Feature: Update Users using Karate Framework

  Background:
    * url 'https://reqres.in/api/'
    * header Content-Type = 'application/json'
    * configure logPrettyResponse = true
    * def expectedOutput = read("response1.json")

  	
  Scenario: put method to update user using request
	
  	Given path '/users/2'
  	And request {"name": "morpheus","job": "zion resident"}
  	When method PUT
  	Then status 200
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	
   Scenario: PUT method to update user using request and verifying the response.
	
  	Given path '/users/2'
  	And request {"name": "morpheus","job": "zion resident"}
  	When method PUT
  	Then status 200
  	And match response == {"name": "morpheus","job": "zion resident","updatedAt": "#ignore"}
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	
  	
  Scenario: Post method to create new user using request and verifying the response  using json file
	
  	Given path '/users/2'
  	And def requestBody = read("request1.json")
  	And request requestBody
  	When method PUT
  	Then status 200
  	And match response == expectedOutput
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	