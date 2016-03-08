require 'test_helper'

class BusinessesControllerTest < ActionController::TestCase
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businesses)
  end

  test "should create business" do
    assert_difference('Business.count') do
      post :create, business: { address: @business.address, latitude: @business.latitude, longitude: @business.longitude, name: @business.name, type_of: @business.type_of }
    end

    assert_response 201
  end

  test "should show business" do
    get :show, id: @business
    assert_response :success
  end

  test "should update business" do
    put :update, id: @business, business: { address: @business.address, latitude: @business.latitude, longitude: @business.longitude, name: @business.name, type_of: @business.type_of }
    assert_response 204
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete :destroy, id: @business
    end

    assert_response 204
  end
end
