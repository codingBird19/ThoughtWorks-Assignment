#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

Feature: Login feature
  I want to use this template for my feature file

  Background:
    * url 'https://reqres.in/api'
    
  
  Scenario: User is able to login successfully with valid credential
    * def login_req =
    """
    {
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
    }"""
    Given path 'login'
    And request login_req
    When method post
    Then status 200
    * def token = response.token
    * print 'login user token is: ', token
