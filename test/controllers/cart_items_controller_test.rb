require 'test_helper'

class CartItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart_item = cart_items(:one)
  end

  test "should get index" do
    get cart_items_url, as: :json
    assert_response :success
  end

  test "should create cart_item" do
    assert_difference('CartItem.count') do
      post cart_items_url, params: { cart_item: { amount: @cart_item.amount, big: @cart_item.big, calories: @cart_item.calories, carbs: @cart_item.carbs, description: @cart_item.description, image: @cart_item.image, image1: @cart_item.image1, image2: @cart_item.image2, mini: @cart_item.mini, mini_price: @cart_item.mini_price, name: @cart_item.name, price: @cart_item.price } }, as: :json
    end

    assert_response 201
  end

  test "should show cart_item" do
    get cart_item_url(@cart_item), as: :json
    assert_response :success
  end

  test "should update cart_item" do
    patch cart_item_url(@cart_item), params: { cart_item: { amount: @cart_item.amount, big: @cart_item.big, calories: @cart_item.calories, carbs: @cart_item.carbs, description: @cart_item.description, image: @cart_item.image, image1: @cart_item.image1, image2: @cart_item.image2, mini: @cart_item.mini, mini_price: @cart_item.mini_price, name: @cart_item.name, price: @cart_item.price } }, as: :json
    assert_response 200
  end

  test "should destroy cart_item" do
    assert_difference('CartItem.count', -1) do
      delete cart_item_url(@cart_item), as: :json
    end

    assert_response 204
  end
end
