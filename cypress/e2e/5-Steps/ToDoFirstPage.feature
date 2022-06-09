Feature: Go To First Page and User Icon Is displayed

Scenario: First Page - Logo Is Displayed
Given I Open The First Page
Then Element "dashboardPageElements.logo" Is Displayed

Scenario Outline: Elements Are Displayed on bottom side of the page
When I Scroll To The "bottom" Area
Then I Verify That <section> Section has <option> Option

Examples:
|section|  |option|

