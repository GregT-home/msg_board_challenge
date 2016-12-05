Feature: Reply

  Users would like to reply to a specific posting.

  * A user can create a reply from the posting page
  * A user can create a reply inline on the Root page
  * A user can create a reply from a User Profile page

  Scenario: A user can create a reply from the posting page
    Given I am signed in
    And there is at least one posting on the Root Page
    When I click Reply for a posting
    Then I see the Reply page for that posting
    When I type a reply
    And I click Send
    Then I see the reply on the Root Page

  Scenario: A user can create a reply from a User Profile page
    Given I am signed in
    And there is at least one other user
    And that user has at least one post
    When I navigate to a user's Profile page
    And I click Reply for a posting
    Then I see the Reply page for that posting
    When I type a reply
    And I click Send
    Then I see the reply
