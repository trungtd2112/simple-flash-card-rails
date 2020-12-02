require "application_system_test_case"

class CardReviewsTest < ApplicationSystemTestCase
  setup do
    @card_review = card_reviews(:one)
  end

  test "visiting the index" do
    visit card_reviews_url
    assert_selector "h1", text: "Card Reviews"
  end

  test "creating a Card review" do
    visit card_reviews_url
    click_on "New Card Review"

    fill_in "Card", with: @card_review.card_id
    fill_in "Review", with: @card_review.review
    fill_in "User", with: @card_review.user_id
    click_on "Create Card review"

    assert_text "Card review was successfully created"
    click_on "Back"
  end

  test "updating a Card review" do
    visit card_reviews_url
    click_on "Edit", match: :first

    fill_in "Card", with: @card_review.card_id
    fill_in "Review", with: @card_review.review
    fill_in "User", with: @card_review.user_id
    click_on "Update Card review"

    assert_text "Card review was successfully updated"
    click_on "Back"
  end

  test "destroying a Card review" do
    visit card_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card review was successfully destroyed"
  end
end
