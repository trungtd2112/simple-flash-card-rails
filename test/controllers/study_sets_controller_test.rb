require 'test_helper'

class StudySetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_set = study_sets(:one)
  end

  test "should get index" do
    get study_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_study_set_url
    assert_response :success
  end

  test "should create study_set" do
    assert_difference('StudySet.count') do
      post study_sets_url, params: { study_set: { name: @study_set.name, user_id: @study_set.user_id } }
    end

    assert_redirected_to study_set_url(StudySet.last)
  end

  test "should show study_set" do
    get study_set_url(@study_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_set_url(@study_set)
    assert_response :success
  end

  test "should update study_set" do
    patch study_set_url(@study_set), params: { study_set: { name: @study_set.name, user_id: @study_set.user_id } }
    assert_redirected_to study_set_url(@study_set)
  end

  test "should destroy study_set" do
    assert_difference('StudySet.count', -1) do
      delete study_set_url(@study_set)
    end

    assert_redirected_to study_sets_url
  end
end
