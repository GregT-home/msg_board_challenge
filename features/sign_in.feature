Feature: Sign-In

  Users need to be signed-in to see any pages.

  * A user can sign into the app with registered email and password

  Scenario: A user can sign into the system with registered email and password
    Given I am not signed in
    When I enter my registered email
    And I enter the associated password
    And I click Sign In
    Then I am sent to my Postings page
    And I see my user name
    And I see a success message containing "Signed in successfully"

  Scenario: A user cannot sign into the system with an unregistered email or password
    Given I am not signed in
    When I enter an unregistered email
    And I enter an invalid password
    And I click Sign In
    Then I see an alert containing "Invalid email or password"
    When I enter my registered email
    And I enter an invalid password
    And I click Sign In
    Then I see an alert containing "Invalid email or password"
