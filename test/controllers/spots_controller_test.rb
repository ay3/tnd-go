require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot = spots(:one)
  end

  test "should get index" do
    get spots_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_url
    assert_response :success
  end

  test "should create spot" do
    assert_difference('Spot.count') do
      post spots_url, params: { spot: { access: @spot.access, address: @spot.address, category: @spot.category, lat: @spot.lat, lng: @spot.lng, mapcode: @spot.mapcode, memo: @spot.memo, name: @spot.name, picture: @spot.picture, postcode: @spot.postcode, prefectures: @spot.prefectures, url: @spot.url } }
    end

    assert_redirected_to spot_url(Spot.last)
  end

  test "should show spot" do
    get spot_url(@spot)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_url(@spot)
    assert_response :success
  end

  test "should update spot" do
    patch spot_url(@spot), params: { spot: { access: @spot.access, address: @spot.address, category: @spot.category, lat: @spot.lat, lng: @spot.lng, mapcode: @spot.mapcode, memo: @spot.memo, name: @spot.name, picture: @spot.picture, postcode: @spot.postcode, prefectures: @spot.prefectures, url: @spot.url } }
    assert_redirected_to spot_url(@spot)
  end

  test "should destroy spot" do
    assert_difference('Spot.count', -1) do
      delete spot_url(@spot)
    end

    assert_redirected_to spots_url
  end
end
