require 'test_helper'

class DynastiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dynasty = dynasties(:one)
  end

  test "should get index" do
    get dynasties_url
    assert_response :success
  end

  test "should get new" do
    get new_dynasty_url
    assert_response :success
  end

  test "should create dynasty" do
    assert_difference('Dynasty.count') do
      post dynasties_url, params: { dynasty: { dy_name: @dynasty.dy_name } }
    end

    assert_redirected_to dynasty_url(Dynasty.last)
  end

  test "should show dynasty" do
    get dynasty_url(@dynasty)
    assert_response :success
  end

  test "should get edit" do
    get edit_dynasty_url(@dynasty)
    assert_response :success
  end

  test "should update dynasty" do
    patch dynasty_url(@dynasty), params: { dynasty: { dy_name: @dynasty.dy_name } }
    assert_redirected_to dynasty_url(@dynasty)
  end

  test "should destroy dynasty" do
    assert_difference('Dynasty.count', -1) do
      delete dynasty_url(@dynasty)
    end

    assert_redirected_to dynasties_url
  end
end
