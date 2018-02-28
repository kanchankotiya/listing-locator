require 'test_helper'

class TouristplaceCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @touristplace_category = touristplace_categories(:one)
  end

  test "should get index" do
    get touristplace_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_touristplace_category_url
    assert_response :success
  end

  test "should create touristplace_category" do
    assert_difference('TouristplaceCategory.count') do
      post touristplace_categories_url, params: { touristplace_category: { name: @touristplace_category.name } }
    end

    assert_redirected_to touristplace_category_url(TouristplaceCategory.last)
  end

  test "should show touristplace_category" do
    get touristplace_category_url(@touristplace_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_touristplace_category_url(@touristplace_category)
    assert_response :success
  end

  test "should update touristplace_category" do
    patch touristplace_category_url(@touristplace_category), params: { touristplace_category: { name: @touristplace_category.name } }
    assert_redirected_to touristplace_category_url(@touristplace_category)
  end

  test "should destroy touristplace_category" do
    assert_difference('TouristplaceCategory.count', -1) do
      delete touristplace_category_url(@touristplace_category)
    end

    assert_redirected_to touristplace_categories_url
  end
end
