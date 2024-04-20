Feature: Get request api base url_end point

  Background: Set base url
  	# Sample api site
    Given url 'https://reqres.in'

  Scenario: Testing get end point in JSON format data
     #Context path
    And path '/api/users/2'
     #Data in json fomat
    And header Accept = 'application/json'
    When method get # Send a get request
     #Status code response should be 200
    Then status 200
    And print response
    
    # Assertion if response matches what GET from api request
    And match response ==
    """
    	{
					"data": {
					"id": 2,
					"email": "janet.weaver@reqres.in",
					"first_name": "Janet",
					"last_name": "Weaver",
					"avatar": "https://reqres.in/img/faces/2-image.jpg"
					},
					"support": {
					"url": "https://reqres.in/#support-heading",
					"text": "To keep ReqRes free, contributions towards server costs are appreciated!"
					}
			}
			
			"""

Scenario: Testing get end point in JSON format data
     #Context path
    And path '/api/users?page=2'
     #Data in json fomat
    And header Accept = 'application/json'
    When method get # Send a get request
     #Status code response should be 200
    Then status 200
    And print response
    
    
Scenario: Testing get end point in JSON format data
     #Context path
    And path '/api/users?page=2'
     #Data in json fomat
    And header Accept = 'application/json'
    When method get # Send a get request
     #Status code response should be 200
    Then status 200
    And print response
    
    # Assertion(validate) in JSON format on a specific property from Get response on api site: "https://reqres.in/api/users?page=2"
    And match response contains deep {"data": [{"name": "cerulean"}]}
    
    # Asserttion(validate) header 
    And match header Connection == "keep-alive"
    
    
    
  