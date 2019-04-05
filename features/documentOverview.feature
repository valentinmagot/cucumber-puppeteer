Feature: documentOverview
  In order to use GCdocs Mobile
  As a user
  I want to access a document overview page

  Scenario: Login to GCdocs Mobile
    When  I open the url "http://40.121.33.252:8002/otdsws/login?RFA=9481CACC-AE13-BA48-C18E-7D91F064F228%3Ahttp%3A%2F%2F40%2E121%2E33%2E252%2Fotcs%2Fllisapi%2Edll%3Ffunc%3Dotdsintegration%2Eredirect%26NextURL%3Dhttp%253A%252F%252F40%252E121%252E33%252E252%252Fotcs%252Fllisapi%252Edll&PostTicket=true&PostParams=true&ux_version=1&PreserveFragment=true"
    # Wait for all elements to load
    And   I expect the element "#otds_username" is visible after "5.5" seconds
    #And   the screenshot of "Login-to-GCdocs-Mobile" matches the web page
    Then  I set the element "#otds_username" value to "valentin"
    And   I set the element "#otds_password" value to "password"
    And   I click the element "#loginbutton"

    Scenario: Browse Enterprise folder
    And   I expect the element "#rowCell10 .browseItemName .browseItemNameContainer" is visible after "5.5" seconds
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=llworkspace"
    # This can easily make test fail => screeshot causses error beacause as soon as someone modify a folder inside GCdocs the ref screenshot might be diffrent
    #And   the screenshot of "Browse-Enterprise-folder" matches the web page
    Then  I click the element "#rowCell10 .browseItemName .browseItemNameContainer"

    Scenario: Browse "Test Valentin" folder
    And   I expect the element "#rowCell15 .browseItemName .browseItemNameContainer" is visible after "5.5" seconds
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=ll&objId=339354&objAction=browse&viewType=1"
    #Then  the screenshot of "Browse-Test-Valentin-folder" matches the web page
    Then  I click the element "#rowCell15 .browseItemName .browseItemNameContainer"

    Scenario: Check "noumea.jiff" document overview
    And   I expect the element ".title" is visible after "5.5" seconds
    Then  I expect the page url is "http://40.121.33.252/otcs/llisapi.dll?func=ll&objaction=overview&objid=385444"
    And   I expect the element ".title" contains text "noumea.jfif"
    Then  I click the element "button.mdc-button.button.button-secondary.dialog-more-actions.mdc-ripple-upgraded"

    Scenario: Check "More Action" popup
    And   I expect the element "#dialog-more-actions" is visible after "4.5" seconds
    And   I expect the element "#dialog-more-actions .mdc-dialog__container .mdc-dialog__surface" is visible
    Then  I click the element "#dialog-more-actions .mdc-dialog__container .mdc-dialog__surface footer button"
    #Then  the screenshot of "Check-More-Action-popup" matches the web page

    