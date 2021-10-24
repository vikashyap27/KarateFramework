@smoke
Feature: Delete Users using Karate Framework

  Background:
    * url 'https://reqres.in/api/'
    * header Content-Type = 'application/json'
    * configure logPrettyResponse = true

  	
  Scenario: put method to update user using request
	
  	Given path '/users/2'
  	When method DELETE
  	Then status 204
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	
   Scenario: PUT method to update user using request and verifying the response.
	
  	Given path '/users/2'
  	When method DELETE
  	Then status 204
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	
  	
  Scenario: Post method to create new user using request and verifying the response  using json file
	
  	Given path '/users/2'
  	When method DELETE
  	Then status 204
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	