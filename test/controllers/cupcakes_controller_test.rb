require 'test_helper'

class CupcakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cupcake = cupcakes(:one)
  end

  test "should get index" do
    get cupcakes_url, as: :json
    assert_response :success
  end

  test "should create cupcake" do
    assert_difference('Cupcake.count') do
      post cupcakes_url, params: { cupcake: { calories: @cupcake.calories, carbs: @cupcake.carbs, description: @cupcake.description, image: @cupcake.image, name: @cupcake.name, price: @cupcake.price, type: @cupcake.type } }, as: :json
    end

    assert_response 201
  end

  test "should show cupcake" do
    get cupcake_url(@cupcake), as: :json
    assert_response :success
  end

  test "should update cupcake" do
    patch cupcake_url(@cupcake), params: { cupcake: { calories: @cupcake.calories, carbs: @cupcake.carbs, description: @cupcake.description, image: @cupcake.image, name: @cupcake.name, price: @cupcake.price, type: @cupcake.type } }, as: :json
    assert_response 200
  end

  test "should destroy cupcake" do
    assert_difference('Cupcake.count', -1) do
      delete cupcake_url(@cupcake), as: :json
    end

    assert_response 204
  end
end
