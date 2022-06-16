Feature: Test IO - Go To First Page And Verify That Elements Are Displayed

Scenario: First Page - Logo Is Displayed
Given I Open The "https://test.io/" Page
Then Element "dashboardPageElements.logo" Is Displayed

Scenario Outline: Elements Are Displayed on bottom side of the page
When I Scroll To The "bottomLeft" Area
Then Element 2 "<options>" Is Displayed 

Examples:
| options |                          
| footer.section.organization |      
| footer.section.organization |      
| footer.section.organization |      
| footer.option.services |
| footer.option.crowdtesting |
| footer.option.coverage |
