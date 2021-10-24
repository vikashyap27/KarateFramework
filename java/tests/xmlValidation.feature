Feature: validate xml using Karate Framework
	
  Scenario: Post method to create user using XML request
	
  	Given def cat = <cat><name>Billie</name><scores><score>2</score><score>5</score></scores></cat>
  	Then match cat/cat/scores/score[2] == '5'
  	Then match cat.cat.scores.score[1] == '5'
