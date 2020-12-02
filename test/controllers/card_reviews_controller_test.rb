require 'test_helper'

class CardReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card_review = card_reviews(:one)
  end

  test "should get index" do
    get card_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_card_review_url
    assert_response :success
  end

  test "should create card_review" do
    assert_difference('CardReview.count') do
      post card_reviews_url, params: { card_review: { card_id: @card_review.card_id, review: @card_review.review, user_id: @card_review.user_id } }
    end

    assert_redirected_to card_review_url(CardReview.last)
  end

  test "should show card_review" do
    get card_review_url(@card_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_review_url(@card_review)
    assert_response :success
  end

  test "should update card_review" do
    patch card_review_url(@card_review), params: { card_review: { card_id: @card_review.card_id, review: @card_review.review, user_id: @card_review.user_id } }
    assert_redirected_to card_review_url(@card_review)
  end

  test "should destroy card_review" do
    assert_difference('CardReview.count', -1) do
      delete card_review_url(@card_review)
    end

    assert_redirected_to card_reviews_url
  end
end
