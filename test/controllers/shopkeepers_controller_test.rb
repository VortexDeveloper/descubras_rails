require 'test_helper'

class ShopkeepersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopkeeper = shopkeepers(:one)
  end

  test "should get index" do
    get shopkeepers_url
    assert_response :success
  end

  test "should get new" do
    get new_shopkeeper_url
    assert_response :success
  end

  test "should create shopkeeper" do
    assert_difference('Shopkeeper.count') do
      post shopkeepers_url, params: { shopkeeper: {  } }
    end

    assert_redirected_to shopkeeper_url(Shopkeeper.last)
  end

  test "should show shopkeeper" do
    get shopkeeper_url(@shopkeeper)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopkeeper_url(@shopkeeper)
    assert_response :success
  end

  test "should update shopkeeper" do
    patch shopkeeper_url(@shopkeeper), params: { shopkeeper: {  } }
    assert_redirected_to shopkeeper_url(@shopkeeper)
  end

  test "should destroy shopkeeper" do
    assert_difference('Shopkeeper.count', -1) do
      delete shopkeeper_url(@shopkeeper)
    end

    assert_redirected_to shopkeepers_url
  end
end
