require "test_helper"

class TerroristsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terrorist = terrorists(:one)
  end

  test "should get index" do
    get terrorists_url
    assert_response :success
  end

  test "should get new" do
    get new_terrorist_url
    assert_response :success
  end

  test "should create terrorist" do
    assert_difference("Terrorist.count") do
      post terrorists_url, params: { terrorist: { id: @terrorist.id, name: @terrorist.name } }
    end

    assert_redirected_to terrorist_url(Terrorist.last)
  end

  test "should show terrorist" do
    get terrorist_url(@terrorist)
    assert_response :success
  end

  test "should get edit" do
    get edit_terrorist_url(@terrorist)
    assert_response :success
  end

  test "should update terrorist" do
    patch terrorist_url(@terrorist), params: { terrorist: { id: @terrorist.id, name: @terrorist.name } }
    assert_redirected_to terrorist_url(@terrorist)
  end

  test "should destroy terrorist" do
    assert_difference("Terrorist.count", -1) do
      delete terrorist_url(@terrorist)
    end

    assert_redirected_to terrorists_url
  end
end
