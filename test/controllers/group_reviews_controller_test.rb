require 'test_helper'

class GroupReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_review = group_reviews(:one)
  end

  test "should get index" do
    get group_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_group_review_url
    assert_response :success
  end

  test "should create group_review" do
    assert_difference('GroupReview.count') do
      post group_reviews_url, params: { group_review: { group_id: @group_review.group_id, review: @group_review.review, user_id: @group_review.user_id } }
    end

    assert_redirected_to group_review_url(GroupReview.last)
  end

  test "should show group_review" do
    get group_review_url(@group_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_review_url(@group_review)
    assert_response :success
  end

  test "should update group_review" do
    patch group_review_url(@group_review), params: { group_review: { group_id: @group_review.group_id, review: @group_review.review, user_id: @group_review.user_id } }
    assert_redirected_to group_review_url(@group_review)
  end

  test "should destroy group_review" do
    assert_difference('GroupReview.count', -1) do
      delete group_review_url(@group_review)
    end

    assert_redirected_to group_reviews_url
  end
end
