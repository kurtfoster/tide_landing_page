@tide
Feature: Fields for Landing Page content type

  Ensure that Landing Page content has the expected fields.

  @api @nosuggest
  Scenario: The content type has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "create landing_page content" permission
    When I visit "node/add/landing_page"
    And save screenshot
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I see field "Summary"
    And I should see a "textarea#edit-field-landing-page-summary-0-value" element
    And I should see a "textarea#edit-field-landing-page-summary-0-value.required" element

    And the "#edit-field-featured-image" element should contain "Feature Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

    And the "#edit-field-landing-page-hero-logo" element should contain "Hero Logo"
    And I should see an "input#edit-field-landing-page-hero-logo-entity-browser-entity-browser-open-modal" element

    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-landing-page-intro-text-0-value" element
    And I should not see an "textarea#edit-field-landing-page-intro-text-0-value.required" element

    And I should see text matching "Campaign Primary"
    And I should see an "input#edit-field-landing-page-c-primary-0-target-id" element
    And I should not see an "input#edit-field-landing-page-c-primary-0-target-id.required" element

    And I should see text matching "Campaign Secondary"
    And I should see an "input#edit-field-landing-page-c-secondary-0-target-id" element
    And I should not see an "input#edit-field-landing-page-c-secondary-0-target-id.required" element

    And I should see text matching "Key journeys"
    And I should see text matching "No Key journey added yet."
    And I should see the button "Add Key journeys" in the "content" region

    And I see field "Show Related Content?"
    And I should see an "input#edit-field-show-related-content-value" element
    And I should not see an "input#edit-field-show-related-content-value.required" element

    And I should see text matching "Related links"
    And I should see the button "Add Related links" in the "content" region

    And I should see text matching "Content components"
    And I should see text matching "No Component added yet."
    And I should see "Basic Text" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Accordion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Call to Action" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Card Event" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Promotion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation featured" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation featured Automated" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation Automated" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Key dates" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Masonry image gallery" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Anchor hero" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element

    And I see field "Tags"
    And I should see an "input#edit-field-tags-0-target-id" element
    And I should not see an "input#edit-field-tags-0-target-id.required" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should see an "input#edit-field-topic-0-target-id.required" element

    And I should see text matching "What's Next"
    And I should see text matching "No What's Next block added yet."
    And I should see the button "Add Link" in the "content" region

    And I see field "Show What's Next?"
    And I should see an "input#edit-field-show-whats-next-value" element
    And I should not see an "input#edit-field-show-whats-next-value.required" element

    And I should see text matching "Contact Us"
    And I should see text matching "No Contact Us block added yet."
    And I should see the button "Add Contact Us" in the "content" region

    And I see field "Show Contact Us?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element

    And I see field "Show Site-section Navigation?"
    And I should see an "input#edit-field-landing-page-nav-title-0-value" element
    And I should not see an "input#edit-field-landing-page-nav-title-0-value.required" element

    And I see field "Show Table of Content?"
    And I should see an "input#edit-field-show-table-of-content-value" element
    And I should not see an "input#edit-field-show-table-of-content.required" element

    And I see field "Show topic term and tags?"

    And I see field "Background Colour"
    And I should see an "select#edit-field-landing-page-bg-colour" element
    And I should see an "select#edit-field-landing-page-bg-colour.required" element

  @api
  Scenario: The content type has the menu settings.
    Given I am logged in as a user with the "create landing_page content, administer menu" permission
    When I visit "node/add/landing_page"
    And I should see the text "Menu settings"
    And I see field "Provide a menu link"

  @api @suggest
  Scenario: The content type has the expected fields (and labels where we can use them) including from suggested modules.
    Given I am logged in as a user with the "create landing_page content" permission
    When I visit "node/add/landing_page"
    And save screenshot
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I see field "Summary"
    And I should see a "textarea#edit-field-landing-page-summary-0-value" element
    And I should see a "textarea#edit-field-landing-page-summary-0-value.required" element

    And the "#edit-field-featured-image" element should contain "Feature Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-landing-page-intro-text-0-value" element
    And I should not see an "textarea#edit-field-landing-page-intro-text-0-value.required" element

    And I should see text matching "Campaign Primary"
    And I should see an "input#edit-field-landing-page-c-primary-0-target-id" element
    And I should not see an "input#edit-field-landing-page-c-primary-0-target-id.required" element

    And I should see text matching "Campaign Secondary"
    And I should see an "input#edit-field-landing-page-c-secondary-0-target-id" element
    And I should not see an "input#edit-field-landing-page-c-secondary-0-target-id.required" element

    And I should see text matching "Key journeys"
    And I should see text matching "No Key journey added yet."
    And I should see the button "Add Key journeys" in the "content" region

    And I see field "Show Related Content?"
    And I should see an "input#edit-field-show-related-content-value" element
    And I should not see an "input#edit-field-show-related-content-value.required" element

    And I see field "Show Content Rating?"
    And I should see an "input#edit-field-show-content-rating-value" element
    And I should not see an "input#edit-field-show-content-rating-value.required" element

    And I should see text matching "Related links"
    And I should see text matching "No Link added yet."
    And I should see the button "Add Related links" in the "content" region

    And I should see text matching "Content components"
    And I should see text matching "No Component added yet."
    And I should see "Basic Text" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Accordion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Call to Action" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Card Event" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Promotion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation featured" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation featured Automated" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation Automated" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Key dates" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element

    And I should see "Embedded Webform" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Featured news" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element

    And I see field "Tags"
    And I should see an "input#edit-field-tags-0-target-id" element
    And I should not see an "input#edit-field-tags-0-target-id.required" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should see an "input#edit-field-topic-0-target-id.required" element

    And I should see text matching "What's Next"
    And I should see text matching "No What's Next block added yet."
    And I should see the button "Add Link" in the "content" region

    And I see field "Show What's Next?"
    And I should see an "input#edit-field-show-whats-next-value" element
    And I should not see an "input#edit-field-show-whats-next-value.required" element

    And I should see text matching "Contact Us"
    And I should see text matching "No Contact Us block added yet."
    And I should see the button "Add Contact Us" in the "content" region

    And I see field "Show Contact Us?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element

    And I see field "Show Site-section Navigation?"
    And I should see an "input#edit-field-landing-page-nav-title-0-value" element
    And I should not see an "input#edit-field-landing-page-nav-title-0-value.required" element

    And I see field "Show Table of Content?"
    And I should see an "input#edit-field-show-table-of-content-value" element
    And I should not see an "input#edit-field-show-table-of-content.required" element

    And I see field "Show topic term and tags?"

    And I see field "Background Colour"
    And I should see an "select#edit-field-landing-page-bg-colour" element
    And I should see an "select#edit-field-landing-page-bg-colour.required" element
