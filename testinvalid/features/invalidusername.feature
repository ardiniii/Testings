Feature: Invalid login to amazon page
Scenario:
Given I open amazon page
Given I click sign in label
Given I enter invalid username
And I click continue button