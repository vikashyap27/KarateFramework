Feature: Create new Change Request using Karate with different data 

  Background:
    * url 'https://dev95747.service-now.com/api/now/table/'
    * header Content-Type = 'application/json'
    * configure logPrettyResponse = true
  
  
  Scenario Outline: Create a Change request with different data
  
  Given path '/incident'
  When request {'short_description' : <short>, 'type' : <normal>}
  And method post
  Then status 200
  And  print response
  
  Examples: 
  |short					|	type		|
  |This is easy				|	normal		|
  |No Programming Needed	|	just normal	|
  |easier than RestAssured	|	only normal	|
  
  
  Scenario: Get a Incident Details
  
  When method get
  Then status 200
  And  print response
  