# new feature
# Tags: optional

Feature: Find pet by status

  Background:
    * url 'https://petstore.swagger.io/v2/pet/'

  Scenario Outline: get all pets and then get the first pet by status
    * param status = <petStatus>
    Given path 'findByStatus'
    When method get
    Then status 200

  Examples:
  | petStatus |
  | 'available |
  | 'pending'  |
  | 'sold'     |


#Scenario: Update a pet
#  Given path <string>
#  When method put
#  Then status




  Scenario: create a pet and then get it by status
    * def pet =
      """
      {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "cub",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "sold"
}
      """
    Given path 'findByStatus'
    And request pet
    When method post
    Then status 201


#    * def status =
#    * print 'created status is: ',status