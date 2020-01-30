require "application_system_test_case"

class VisitorProfilesTest < ApplicationSystemTestCase
  setup do
    @visitor_profile = visitor_profiles(:one)
  end

  test "visiting the index" do
    visit visitor_profiles_url
    assert_selector "h1", text: "Visitor Profiles"
  end

  test "creating a Visitor profile" do
    visit visitor_profiles_url
    click_on "New Visitor Profile"

    fill_in "Citizen", with: @visitor_profile.citizen_id
    fill_in "First name", with: @visitor_profile.first_name
    fill_in "Last name", with: @visitor_profile.last_name
    fill_in "User", with: @visitor_profile.user_id
    click_on "Create Visitor profile"

    assert_text "Visitor profile was successfully created"
    click_on "Back"
  end

  test "updating a Visitor profile" do
    visit visitor_profiles_url
    click_on "Edit", match: :first

    fill_in "Citizen", with: @visitor_profile.citizen_id
    fill_in "First name", with: @visitor_profile.first_name
    fill_in "Last name", with: @visitor_profile.last_name
    fill_in "User", with: @visitor_profile.user_id
    click_on "Update Visitor profile"

    assert_text "Visitor profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitor profile" do
    visit visitor_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitor profile was successfully destroyed"
  end
end
