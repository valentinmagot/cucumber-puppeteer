Feature: documentOverview
  In order to use GCdocs Mobile
  As a user
  I want to access a document overview page

  Scenario: Login to GCdocs Mobile
    When  I open the url "http://40.121.33.252/otcs/llisapi.dll?func=llworkspace"
    # Wait for all elements to load
    And   I expect the element "#otds_username" is visible after "5.5" seconds
    Then  I set the element "#otds_username" value to "valentin"
    And   I set the element "#otds_password" value to "password"
    And   I click the element "#loginbutton"

    Scenario: Browse Enterprise folder
    And   I expect the element "#rowCell10 .browseItemName .browseItemNameContainer" is visible after "5.5" seconds
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=llworkspace"
    Then  I click the element "#rowCell10 .browseItemName .browseItemNameContainer"

    Scenario: Browse "Test Valentin" folder
    And   I expect the element "#rowCell15 .browseItemName .browseItemNameContainer" is visible after "5.5" seconds
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=ll&objId=339354&objAction=browse&viewType=1"
    Then  I click the element "#rowCell15 .browseItemName .browseItemNameContainer"

    Scenario: Check "noumea.jiff" document overview
    And   I expect the element ".title" is visible after "5.5" seconds
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=ll&objaction=overview&objid=385444"
    And   I expect the element ".title" contains text "noumea.jfif"
    Then  I click the element "button.mdc-button.button.button-secondary.dialog-more-actions.mdc-ripple-upgraded"

    Scenario: Check "More Action" popup
    And   I wait for "6.5" seconds
    And   I expect the element "#dialog-more-actions" is visible
    And   I expect the element "#dialog-more-actions .mdc-dialog__container .mdc-dialog__surface" is visible
    Then  I click the element "#dialog-more-actions .mdc-dialog__container .mdc-dialog__surface footer button"

    Scenario: Check document overview hamburger menu
    Then   I expect the element ".menu" is visible after "5.5" seconds
    
    
    # Scenario: Check document overview help dialog
    # And   I expect the element ".dialog-help" is visible after "5.5" seconds
    # And   I click the element "button.dialog-help"
    # And   I expect the element ".mdc-dialog.mdc-dialog--open .mdc-dialog__container .mdc-dialog__surface footer.mdc-dialog__actions button" is visible after "5.5" seconds
    # And   I click the element ".mdc-dialog.mdc-dialog--open .mdc-dialog__container .mdc-dialog__surface footer.mdc-dialog__actions button"

    

    