require "application_system_test_case"

class CardSetsTest < ApplicationSystemTestCase
  setup do
    @card_set = card_sets(:one)
  end

  test "visiting the index" do
    visit card_sets_url
    assert_selector "h1", text: "Card Sets"
  end

  test "creating a Card set" do
    visit card_sets_url
    click_on "New Card Set"

    fill_in "Name", with: @card_set.name
    fill_in "User", with: @card_set.user_id
    click_on "Create Card set"

    assert_text "Card set was successfully created"
    click_on "Back"
  end

  test "updating a Card set" do
    visit card_sets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @card_set.name
    fill_in "User", with: @card_set.user_id
    click_on "Update Card set"

    assert_text "Card set was successfully updated"
    click_on "Back"
  end

  test "destroying a Card set" do
    visit card_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card set was successfully destroyed"
  end
end
