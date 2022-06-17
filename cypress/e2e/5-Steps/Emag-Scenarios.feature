Feature: Navigate To First Page, Navigate To Genius Page, Go I Search A TV And Add To Cart

Scenario: Succesfully Navigate To Genius Page
    Given I Open The "https://www.emag.ro/homepage?ref=emag_CMP-420338_campanie-revolutia-preturilor-14-16-iunie-2022" Page
    And I Click "Accept" Button
    When I Click "Genius" Link
    Then I Verify That Element "Cât poți economisi cu Genius?" Is Displayed

Scenario: Succesfully Navigate To Resigilate Page And Choose A Product And Add To Cart
    Given I Open The "https://www.emag.ro/search/televizoare/filter/diagonala-ecran-f9186,80-81-cm-v29468/Televizor+Samsung+65QN90A%2C+163+cm%2C+Smart%2C+4K+Ultra+HD%2C+Neo+QLED%2C+Clasa+F/c?ref=lst_leftbar_9186_29468" Page
    And I Click "Adauga in Cos" Button
    When I Click "Vezi detalii cos" Link
    Then I See "Cosul meu" In The Title
    

    