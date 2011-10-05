Feature: User Uploads Program

  Scenario: Upload from within the Hackety Hack App
    Given I am a user with username "test" and password "password"
    When I send a POST request to "http://api.hackety-hack.local/programs" with the following:
      """
      program[author_username]=test&program[slug]=helloworld&program[title]=Hello%20World&program[source_code]=puts%20%22Hello%20World!%22
      """
    And I am on the programs page
    Then I should see "Hello World" in the list of programs
