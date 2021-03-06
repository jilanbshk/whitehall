Feature: Previewing unpublished editions

Scenario: Unpublished editions can be previewed
  Given a draft publication "Beard Length Review" exists
  And I am an editor
  When I preview "Beard Length Review"
  Then I should see the summary of the draft publication "Beard Length Review"

Scenario: Unpublished editions link to preview
  Given I am an editor
  When I draft a new publication "Test publication"
  Then I should see a link to the preview version of the publication "Test publication"

@use_real_sso
Scenario: Unpublished editions are protected from visitors
  Given a draft publication "Beard Length Review" exists
  And I am a visitor
  When I preview "Beard Length Review"
  Then I should get a "404" error
