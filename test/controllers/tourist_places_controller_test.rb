require 'test_helper'

class TouristPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourist_place = tourist_places(:one)
  end

  test "should get index" do
    get tourist_places_url
    assert_response :success
  end

  test "should get new" do
    get new_tourist_place_url
    assert_response :success
  end

  test "should create tourist_place" do
    assert_difference('TouristPlace.count') do
      post tourist_places_url, params: { tourist_place: { about_place: @tourist_place.about_place, banner_image: @tourist_place.banner_image, city: @tourist_place.city, country: @tourist_place.country, latitude: @tourist_place.latitude, longitude: @tourist_place.longitude, name: @tourist_place.name, state: @tourist_place.state } }
    end

    assert_redirected_to tourist_place_url(TouristPlace.last)
  end

  test "should show tourist_place" do
    get tourist_place_url(@tourist_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_tourist_place_url(@tourist_place)
    assert_response :success
  end

  test "should update tourist_place" do
    patch tourist_place_url(@tourist_place), params: { tourist_place: { about_place: @tourist_place.about_place, banner_image: @tourist_place.banner_image, city: @tourist_place.city, country: @tourist_place.country, latitude: @tourist_place.latitude, longitude: @tourist_place.longitude, name: @tourist_place.name, state: @tourist_place.state } }
    assert_redirected_to tourist_place_url(@tourist_place)
  end

  test "should destroy tourist_place" do
    assert_difference('TouristPlace.count', -1) do
      delete tourist_place_url(@tourist_place)
    end

    assert_redirected_to tourist_places_url
  end
end
