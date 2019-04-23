Feature: Videos on YouTube

  Scenario: Search for Videos
    Given  YouTube home page
    When  search for "testing calidad"
    Then videos of Cucumber are returned

  Scenario: Go to first Video
    Given I am on the cucumber testing search on YouTube
    When I click on the first video
    Then video of Introduction to Cucumber is returned

  Scenario: Show more description
    Given I am on the first cucumber testing YouTube
    When I click on show more
    Then larger description is returned

  Scenario: Mute video
    Given I am on the first cucumber testing YouTube
    When I click on mute video button
    Then video is muted

  Scenario: Share Button
    Given I am on the first cucumber testing YouTube
    When I click on share video button
    Then share options are open