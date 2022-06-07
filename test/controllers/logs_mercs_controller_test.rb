require "test_helper"

class LogsMercsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logs_merc = logs_mercs(:one)
  end

  test "should get index" do
    get logs_mercs_url
    assert_response :success
  end

  test "should get new" do
    get new_logs_merc_url
    assert_response :success
  end

  test "should create logs_merc" do
    assert_difference("LogsMerc.count") do
      post logs_mercs_url, params: { logs_merc: { m_name: @logs_merc.m_name, t_name: @logs_merc.t_name, user_id: @logs_merc.user_id } }
    end

    assert_redirected_to logs_merc_url(LogsMerc.last)
  end

  test "should show logs_merc" do
    get logs_merc_url(@logs_merc)
    assert_response :success
  end

  test "should get edit" do
    get edit_logs_merc_url(@logs_merc)
    assert_response :success
  end

  test "should update logs_merc" do
    patch logs_merc_url(@logs_merc), params: { logs_merc: { m_name: @logs_merc.m_name, t_name: @logs_merc.t_name, user_id: @logs_merc.user_id } }
    assert_redirected_to logs_merc_url(@logs_merc)
  end

  test "should destroy logs_merc" do
    assert_difference("LogsMerc.count", -1) do
      delete logs_merc_url(@logs_merc)
    end

    assert_redirected_to logs_mercs_url
  end
end
