Feature: documentOverview
  In order to use GCdocs Mobile
  As a user
  I want to access a document overview page

  Scenario: Login to GCdocs Mobile
    When  I open the url "http://40.121.33.252:8002/otdsws/login?RFA=9481CACC-AE13-BA48-C18E-7D91F064F228%3Ahttp%3A%2F%2F40%2E121%2E33%2E252%2Fotcs%2Fllisapi%2Edll%3Ffunc%3Dotdsintegration%2Eredirect%26NextURL%3Dhttp%253A%252F%252F40%252E121%252E33%252E252%252Fotcs%252Fllisapi%252Edll&PostTicket=true&PostParams=true&ux_version=1&PreserveFragment=true"
    Then  I set the element "#otds_username" value to "valentin"
    And   I set the element "#otds_password" value to "password"
    And   I click the element "#loginbutton"
    And   I wait for "3.5" seconds

    Scenario: Browse Enterprise folder
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=llworkspace"
    Then  I click the element "#rowCell10 .browseItemName .browseItemNameContainer"
    And   I wait for "3.5" seconds

    Scenario: Browse "Test Valentin" folder
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=ll&objId=339354&objAction=browse&viewType=1"
    Then  I click the element "#rowCell15 .browseItemName .browseItemNameContainer"
    And   I wait for "3.5" seconds

    Scenario: Check "noumea.jiff" document overview
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=ll&objaction=overview&objid=385444"
    And   I expect the element ".title" contains text "noumea.jfif"

    Scenario: Check "More Action" popup
    Then  I click the element "button.mdc-button.button.button-secondary.dialog-more-actions.mdc-ripple-upgraded"
    And   I wait for "3.5" seconds
    And   I expect the element ".mdc-dialog__actions" is visible
    And   I expect the element ".mdc-dialog__actions button.mdc-button" is visible
    #And   I wait for "3.5" seconds
    #Then  I click the element "button.mdc-button.mdc-dialog__button.mdc-ripple-upgraded"