Feature: Create new Users using Karate Framework

  Background:
    * url 'https://reqres.in/api/'
    * header Content-Type = 'application/json'
    * configure logPrettyResponse = true
    * def expectedOutput = read("response.json")
    * def projectpath = karate.properties['user.dir']
  	* def expectedOutput1 = projectpath+'/src/test/java/testdata/response.json'
  	
  @smoke
  Scenario: Post method to create new user using JSON request
	
  	Given path '/users'
  	And request {"name": "morpheus","job": "leader"}
  	When method POST
  	Then status 201
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  
  	@smoke
   Scenario: Post method to create new user using JSON request and verifying the response.
	
  	Given path '/users'
  	And request {"name": "morpheus","job": "leader"}
  	When method POST
  	Then status 201
  	And match response == {"name": "morpheus","job": "leader","id": "#string","createdAt": "#ignore"}
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	
  @smoke
  Scenario: Post method to create new user using JSON request and verifying the response  using json file
	
  	Given path '/users'
  	And def requestBody = read("request.json")
  	And request requestBody
  	When method POST
  	Then status 201
  	And match response == expectedOutput
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	
  	@ignore
    Scenario: Post method to create new user using JSON request and verifying the response  using json file in different folder
	
  	Given path '/users'
  	And print projectpath
  	And def requestfilepath = projectpath+'/src/test/java/testdata/request.json'
  	And print requestfilepath
  	And def requestBody1 = requestfilepath
  	And request requestBody1
  	#And set request.job ='engineer'
  	When method POST
  	Then status 201
  	And match $ == expectedOutput1
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
