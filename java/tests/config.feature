@smoke
Feature: Configuration understanding

	Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * configure logPrettyResponse = true
    
    
	Scenario: To understand the configuration of Karate Framework
	Given print name 
	
	
	Scenario: To understand the Enviroment config of Karate Framework
	Given path '/users/2'
  	And request {"name": "morpheus","job": "zion resident"}
  	When method POST
  	Then status 201
  	And print response