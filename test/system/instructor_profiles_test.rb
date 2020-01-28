require "application_system_test_case"

class InstructorProfilesTest < ApplicationSystemTestCase
  setup do
    @instructor_profile = instructor_profiles(:one)
  end

  test "visiting the index" do
    visit instructor_profiles_url
    assert_selector "h1", text: "Instructor Profiles"
  end

  test "creating a Instructor profile" do
    visit instructor_profiles_url
    click_on "New Instructor Profile"

    fill_in "Citizen", with: @instructor_profile.citizen_id
    fill_in "Department name", with: @instructor_profile.department_name
    fill_in "First name", with: @instructor_profile.first_name
    fill_in "Group", with: @instructor_profile.group_id
    fill_in "Instructor", with: @instructor_profile.instructor_id
    fill_in "Last name", with: @instructor_profile.last_name
    fill_in "User", with: @instructor_profile.user_id
    click_on "Create Instructor profile"

    assert_text "Instructor profile was successfully created"
    click_on "Back"
  end

  test "updating a Instructor profile" do
    visit instructor_profiles_url
    click_on "Edit", match: :first

    fill_in "Citizen", with: @instructor_profile.citizen_id
    fill_in "Department name", with: @instructor_profile.department_name
    fill_in "First name", with: @instructor_profile.first_name
    fill_in "Group", with: @instructor_profile.group_id
    fill_in "Instructor", with: @instructor_profile.instructor_id
    fill_in "Last name", with: @instructor_profile.last_name
    fill_in "User", with: @instructor_profile.user_id
    click_on "Update Instructor profile"

    assert_text "Instructor profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Instructor profile" do
    visit instructor_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instructor profile was successfully destroyed"
  end
end
