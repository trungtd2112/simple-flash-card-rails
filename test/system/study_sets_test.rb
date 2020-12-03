require "application_system_test_case"

class StudySetsTest < ApplicationSystemTestCase
  setup do
    @study_set = study_sets(:one)
  end

  test "visiting the index" do
    visit study_sets_url
    assert_selector "h1", text: "Study Sets"
  end

  test "creating a Study set" do
    visit study_sets_url
    click_on "New Study Set"

    fill_in "Name", with: @study_set.name
    fill_in "User", with: @study_set.user_id
    click_on "Create Study set"

    assert_text "Study set was successfully created"
    click_on "Back"
  end

  test "updating a Study set" do
    visit study_sets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @study_set.name
    fill_in "User", with: @study_set.user_id
    click_on "Update Study set"

    assert_text "Study set was successfully updated"
    click_on "Back"
  end

  test "destroying a Study set" do
    visit study_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study set was successfully destroyed"
  end
end
