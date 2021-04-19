Feature: Register feature
  

  Background:
    * url 'https://reqres.in/api'
    
  
  Scenario: User is able to register successfully with valid email
    * def request_body =
    """
      {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
      }
    """
    Given path 'register'
    And request request_body
    When method post
    Then status 200
    * def id = response.id
    * def token = response.token
    * print 'Registered user token is: ', token
