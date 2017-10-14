Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "cat"
    And I fill in "category_keywords" with "Vibhor"
    And I fill in "category_permalink" with "perm"
    And I fill in "category_description" with "description"
    And I press "Save"
    Then I should see "cat"
    Then I should see "Vibhor"
    Then I should see "perm"
    Then I should see "description" 
  
    Then I follow "cat"
    When I fill in "category_name" with "cat"
    And I fill in "category_keywords" with "Vibhor"
    And I fill in "category_permalink" with "perm"
    And I fill in "category_description" with "description"
    And I press "Save"
    Then I should see "cat"
    Then I should see "Vibhor"
    Then I should see "perm"
    Then I should see "description"