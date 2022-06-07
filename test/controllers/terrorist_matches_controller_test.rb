require "test_helper"

class TerroristMatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terrorist_match = terrorist_matches(:one)
  end

  test "should get index" do
    get terrorist_matches_url
    assert_response :success
  end

  test "should get new" do
    get new_terrorist_match_url
    assert_response :success
  end

  test "should create terrorist_match" do
    assert_difference("TerroristMatch.count") do
      post terrorist_matches_url, params: { terrorist_match: { m_name: @terrorist_match.m_name, match: @terrorist_match.match, user_id: @terrorist_match.user_id } }
    end

    assert_redirected_to terrorist_match_url(TerroristMatch.last)
  end

  test "should show terrorist_match" do
    get terrorist_match_url(@terrorist_match)
    assert_response :success
  end

  test "should get edit" do
    get edit_terrorist_match_url(@terrorist_match)
    assert_response :success
  end

  test "should update terrorist_match" do
    patch terrorist_match_url(@terrorist_match), params: { terrorist_match: { m_name: @terrorist_match.m_name, match: @terrorist_match.match, user_id: @terrorist_match.user_id } }
    assert_redirected_to terrorist_match_url(@terrorist_match)
  end

  test "should destroy terrorist_match" do
    assert_difference("TerroristMatch.count", -1) do
      delete terrorist_match_url(@terrorist_match)
    end

    assert_redirected_to terrorist_matches_url
  end
end
