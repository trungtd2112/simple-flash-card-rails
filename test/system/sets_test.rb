require "application_system_test_case"

class SetsTest < ApplicationSystemTestCase
  setup do
    @set = sets(:one)
  end

  test "visiting the index" do
    visit sets_url
    assert_selector "h1", text: "Sets"
  end

  test "creating a Set" do
    visit sets_url
    click_on "New Set"

    fill_in "Name", with: @set.name
    fill_in "User", with: @set.user_id
    click_on "Create Set"

    assert_text "Set was successfully created"
    click_on "Back"
  end

  test "updating a Set" do
    visit sets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @set.name
    fill_in "User", with: @set.user_id
    click_on "Update Set"

    assert_text "Set was successfully updated"
    click_on "Back"
  end

  test "destroying a Set" do
    visit sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Set was successfully destroyed"
  end
end
