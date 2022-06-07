require "application_system_test_case"

class TerroristMatchesTest < ApplicationSystemTestCase
  setup do
    @terrorist_match = terrorist_matches(:one)
  end

  test "visiting the index" do
    visit terrorist_matches_url
    assert_selector "h1", text: "Terrorist matches"
  end

  test "should create terrorist match" do
    visit terrorist_matches_url
    click_on "New terrorist match"

    fill_in "M name", with: @terrorist_match.m_name
    fill_in "Match", with: @terrorist_match.match
    fill_in "User", with: @terrorist_match.user_id
    click_on "Create Terrorist match"

    assert_text "Terrorist match was successfully created"
    click_on "Back"
  end

  test "should update Terrorist match" do
    visit terrorist_match_url(@terrorist_match)
    click_on "Edit this terrorist match", match: :first

    fill_in "M name", with: @terrorist_match.m_name
    fill_in "Match", with: @terrorist_match.match
    fill_in "User", with: @terrorist_match.user_id
    click_on "Update Terrorist match"

    assert_text "Terrorist match was successfully updated"
    click_on "Back"
  end

  test "should destroy Terrorist match" do
    visit terrorist_match_url(@terrorist_match)
    click_on "Destroy this terrorist match", match: :first

    assert_text "Terrorist match was successfully destroyed"
  end
end
