Feature: Test IO - Go To First Page And Verify That Elements Are Displayed

Scenario: First Page - Logo Is Displayed
    Given I Open The "https://test.io/" Page
    When I Click "Accept All" Button
    Then I Verify That Element "TEST IO" Is Displayed

Scenario Outline: Elements Are Displayed on bottom side of the page
    When I Scroll To The "bottomLeft" Area
    Then I Verify That Element "<options>" Is Displayed 

Examples:
| options |                          
| ORGANIZATIONS |      
| ORGANIZATIONS |      
| ORGANIZATIONS |      
| Services |
| Crowdtesting |
| Coverage |


