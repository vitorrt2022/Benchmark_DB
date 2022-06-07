require "application_system_test_case"

class TerroristsTest < ApplicationSystemTestCase
  setup do
    @terrorist = terrorists(:one)
  end

  test "visiting the index" do
    visit terrorists_url
    assert_selector "h1", text: "Terrorists"
  end

  test "should create terrorist" do
    visit terrorists_url
    click_on "New terrorist"

    fill_in "Id", with: @terrorist.id
    fill_in "Name", with: @terrorist.name
    click_on "Create Terrorist"

    assert_text "Terrorist was successfully created"
    click_on "Back"
  end

  test "should update Terrorist" do
    visit terrorist_url(@terrorist)
    click_on "Edit this terrorist", match: :first

    fill_in "Id", with: @terrorist.id
    fill_in "Name", with: @terrorist.name
    click_on "Update Terrorist"

    assert_text "Terrorist was successfully updated"
    click_on "Back"
  end

  test "should destroy Terrorist" do
    visit terrorist_url(@terrorist)
    click_on "Destroy this terrorist", match: :first

    assert_text "Terrorist was successfully destroyed"
  end
end
