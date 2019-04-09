Feature: documentOverview
  In order to use GCdocs Mobile
  As a user
  I want to be able to have an overview of the document

  @GCdocs_login
  Scenario: Accessing "noumea.jfif" Document Overview
    Given the url "http://40.121.33.252/otcs/llisapi.dll?func=ll&objaction=overview&objid=385444" is opened
    And  I expect the element ".title" contains text "noumea.jfif"
    And  I expect the screenshot of "Accessing-noumea-jfif-Document-Overview" matches the web page

  Scenario: Check "More Actions" dialog window
    When I click the button "button.mdc-button.button.button-secondary.dialog-more-actions.mdc-ripple-upgraded"
    Then I expect the element "#dialog-more-actions" is visible after "1" seconds
    And  I expect the screenshot of "Check-More-Actions-dialog-window" matches the web page
    Then I click the button "#dialog-more-actions .mdc-dialog__container .mdc-dialog__surface footer button"
  
  Scenario: Check "Help" dialog window
    And  I wait for "5.5" seconds
    #Then I expect the element "a.dialog-help" is visible after "5.5" seconds
    Then I click the link "a.dialog-help"
    And  I expect the screenshot of "Check-Help-dialog-window" matches the web page
    Then I expect the element "#dialog-help.mdc-dialog.mdc-dialog--open" is visible after "1" seconds
    And  I click the element ".mdc-dialog.mdc-dialog--open .mdc-dialog__container .mdc-dialog__surface footer.mdc-dialog__actions button"
    And  I expect the screenshot of "Accessing-noumea-jfif-Document-Overview" matches the web page

  