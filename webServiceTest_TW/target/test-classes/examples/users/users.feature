Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/api'

  Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200

    * def first = response[0]

    Given path 'users', first.id
    When method get
    Then status 200

  Scenario: create a user
    * def user =
      """
      {
        "name": "morpheus",
        "job": "leader"
      }
      """

    Given path 'users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created user id is: ', id

    Given path id
    # When method get
    # Then status 200
    # And match response contains user
  