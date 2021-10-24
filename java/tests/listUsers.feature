@smoke
Feature: Get a list off  new Users using Karate Framework

  Background:
    * url 'https://reqres.in/api/'
    * header Content-Type = 'application/json'
    * configure logPrettyResponse = true
  
  Scenario: Get list of all users

  	Given path '/users'
  	And  param page = 2
  	When method GET
  	Then status 200
  	And print response
  	And print responseHeaders
  	And print responseTime
  	And print responseStatus
  	And match response.data[0].first_name != null
  	And assert response.data.length == 6
  	And match $.data[3].id == 10
  