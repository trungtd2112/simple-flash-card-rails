require "application_system_test_case"

class CardsReviewsTest < ApplicationSystemTestCase
  setup do
    @cards_review = cards_reviews(:one)
  end

  test "visiting the index" do
    visit cards_reviews_url
    assert_selector "h1", text: "Cards Reviews"
  end

  test "creating a Cards review" do
    visit cards_reviews_url
    click_on "New Cards Review"

    fill_in "Cards", with: @cards_review.cards_id
    fill_in "Review", with: @cards_review.review
    fill_in "User", with: @cards_review.user_id
    click_on "Create Cards review"

    assert_text "Cards review was successfully created"
    click_on "Back"
  end

  test "updating a Cards review" do
    visit cards_reviews_url
    click_on "Edit", match: :first

    fill_in "Cards", with: @cards_review.cards_id
    fill_in "Review", with: @cards_review.review
    fill_in "User", with: @cards_review.user_id
    click_on "Update Cards review"

    assert_text "Cards review was successfully updated"
    click_on "Back"
  end

  test "destroying a Cards review" do
    visit cards_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cards review was successfully destroyed"
  end
end
