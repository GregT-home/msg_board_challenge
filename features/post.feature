Feature: Post

  Users would like to create posts

  * A user can create a post from her profile page

  Scenario: A user can create a post from her profile page
    Given I am signed in
    When I navigate to my profile page
    And I click Create Post
    Then I see the New Posting page
    When I enter post content
    And I click Post
    Then I see the posting on my Profile page
    When I navigate to the Root page
    Then I see the posting on the Root Page
