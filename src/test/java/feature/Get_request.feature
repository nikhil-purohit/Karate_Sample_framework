Feature: Verify get request

  Background: 
    * url 'https://reqres.in/'
    * header Accept = 'application/json'

  Scenario: Verify user list and its response
    Given path '/api/users?page=2'
    When method get
    Then status 200
    And print response
    And def GetResponse = response
    And match GetResponse.data[*].name contains ["cerulean"]
    And match GetResponse.data[1].id != null
    And match GetResponse.data[1].name == "fuchsia rose"
    

