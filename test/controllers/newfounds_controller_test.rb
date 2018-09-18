require 'test_helper'

class NewfoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newfound = newfounds(:one)
  end

  test "should get index" do
    get newfounds_url
    assert_response :success
  end

  test "should get new" do
    get new_newfound_url
    assert_response :success
  end

  test "should create newfound" do
    assert_difference('Newfound.count') do
      post newfounds_url, params: { newfound: { city: @newfound.city, date: @newfound.date, dynasty: @newfound.dynasty, locality: @newfound.locality, ruler: @newfound.ruler, weight: @newfound.weight, year: @newfound.year } }
    end

    assert_redirected_to newfound_url(Newfound.last)
  end

  test "should show newfound" do
    get newfound_url(@newfound)
    assert_response :success
  end

  test "should get edit" do
    get edit_newfound_url(@newfound)
    assert_response :success
  end

  test "should update newfound" do
    patch newfound_url(@newfound), params: { newfound: { city: @newfound.city, date: @newfound.date, dynasty: @newfound.dynasty, locality: @newfound.locality, ruler: @newfound.ruler, weight: @newfound.weight, year: @newfound.year } }
    assert_redirected_to newfound_url(@newfound)
  end

  test "should destroy newfound" do
    assert_difference('Newfound.count', -1) do
      delete newfound_url(@newfound)
    end

    assert_redirected_to newfounds_url
  end
end
