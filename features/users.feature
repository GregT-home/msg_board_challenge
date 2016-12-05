Feature: Users
  Devise takes care of user creation and deletion.  Our code implements
  Show User and Index user capabilities.

  * A user can see a list of users
  * A user can see his own profile page
  * A user can see other user profile pages

  Scenario: A user can see a list of users
    Given I am signed in
    When I click User List
    Then I see the User List page
    And I see a list of users

  Scenario: A user can see his own profile page
    Given I am signed in
    When I click my user name
    Then I see my profile page

  Scenario: A user can see other user profile pages
    Given I am signed in
    And at least one other user exists
    When I click User List
    And I click on a user name
    Then I see their profile page
