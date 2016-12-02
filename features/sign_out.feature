Feature: Sign-Out
  A signed-in user must be able to sign out, destroying his session

  Scenario: A user who is signed into the app can sign out
    Given I am signed in
    When I navigate to Sign Out
    Then I am sent to the Root page
