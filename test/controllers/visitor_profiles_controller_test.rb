require 'test_helper'

class VisitorProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor_profile = visitor_profiles(:one)
  end

  test "should get index" do
    get visitor_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_profile_url
    assert_response :success
  end

  test "should create visitor_profile" do
    assert_difference('VisitorProfile.count') do
      post visitor_profiles_url, params: { visitor_profile: { citizen_id: @visitor_profile.citizen_id, first_name: @visitor_profile.first_name, last_name: @visitor_profile.last_name, user_id: @visitor_profile.user_id } }
    end

    assert_redirected_to visitor_profile_url(VisitorProfile.last)
  end

  test "should show visitor_profile" do
    get visitor_profile_url(@visitor_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_profile_url(@visitor_profile)
    assert_response :success
  end

  test "should update visitor_profile" do
    patch visitor_profile_url(@visitor_profile), params: { visitor_profile: { citizen_id: @visitor_profile.citizen_id, first_name: @visitor_profile.first_name, last_name: @visitor_profile.last_name, user_id: @visitor_profile.user_id } }
    assert_redirected_to visitor_profile_url(@visitor_profile)
  end

  test "should destroy visitor_profile" do
    assert_difference('VisitorProfile.count', -1) do
      delete visitor_profile_url(@visitor_profile)
    end

    assert_redirected_to visitor_profiles_url
  end
end
