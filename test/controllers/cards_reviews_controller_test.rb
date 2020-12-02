require 'test_helper'

class CardsReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cards_review = cards_reviews(:one)
  end

  test "should get index" do
    get cards_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_cards_review_url
    assert_response :success
  end

  test "should create cards_review" do
    assert_difference('CardsReview.count') do
      post cards_reviews_url, params: { cards_review: { cards_id: @cards_review.cards_id, review: @cards_review.review, user_id: @cards_review.user_id } }
    end

    assert_redirected_to cards_review_url(CardsReview.last)
  end

  test "should show cards_review" do
    get cards_review_url(@cards_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_cards_review_url(@cards_review)
    assert_response :success
  end

  test "should update cards_review" do
    patch cards_review_url(@cards_review), params: { cards_review: { cards_id: @cards_review.cards_id, review: @cards_review.review, user_id: @cards_review.user_id } }
    assert_redirected_to cards_review_url(@cards_review)
  end

  test "should destroy cards_review" do
    assert_difference('CardsReview.count', -1) do
      delete cards_review_url(@cards_review)
    end

    assert_redirected_to cards_reviews_url
  end
end
