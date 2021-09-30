Feature: Sample test



  Scenario: First rest api test
    Given url  'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
