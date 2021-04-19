Feature: User Feature

  Background:
    * url 'https://reqres.in/api'
#    * def created_user_id = 1


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

    * def created_user_id = response.id
    * print 'created user id is: ', created_user_id

  Scenario: get all users
    Given path 'users?page=2'
    When method get
    Then status 200

    * print response


  Scenario: delete user by id
    * def id = 1
    Given path 'users', id
    When method delete
    Then status 204
