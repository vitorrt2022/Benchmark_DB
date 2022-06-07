require "application_system_test_case"

class LogsMercsTest < ApplicationSystemTestCase
  setup do
    @logs_merc = logs_mercs(:one)
  end

  test "visiting the index" do
    visit logs_mercs_url
    assert_selector "h1", text: "Logs mercs"
  end

  test "should create logs merc" do
    visit logs_mercs_url
    click_on "New logs merc"

    fill_in "M name", with: @logs_merc.m_name
    fill_in "T name", with: @logs_merc.t_name
    fill_in "User", with: @logs_merc.user_id
    click_on "Create Logs merc"

    assert_text "Logs merc was successfully created"
    click_on "Back"
  end

  test "should update Logs merc" do
    visit logs_merc_url(@logs_merc)
    click_on "Edit this logs merc", match: :first

    fill_in "M name", with: @logs_merc.m_name
    fill_in "T name", with: @logs_merc.t_name
    fill_in "User", with: @logs_merc.user_id
    click_on "Update Logs merc"

    assert_text "Logs merc was successfully updated"
    click_on "Back"
  end

  test "should destroy Logs merc" do
    visit logs_merc_url(@logs_merc)
    click_on "Destroy this logs merc", match: :first

    assert_text "Logs merc was successfully destroyed"
  end
end
