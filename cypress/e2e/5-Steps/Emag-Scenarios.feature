Feature: Navigate To First Page, Navigate To Genius Page, Go To Resigilate And Search For All The Products With Price Between 50-100

Background: 
    Given I Open The "https://www.emag.ro/homepage?ref=emag_CMP-420338_campanie-revolutia-preturilor-14-16-iunie-2022" Page

Scenario: Succesfully Navigate To Genius Page
    When I Click "Genius" Link
    Then I Click "Accept" Button

Scenario: Succesfully Navigate To Resigilate Page And Choose All The Products With Price Between 50-100
    When I Click "Resigilate" Link 
    # Then I Check "Toate produsele " Checkbox
    

    