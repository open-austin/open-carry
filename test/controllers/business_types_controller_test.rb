require 'test_helper'

class BusinessTypesControllerTest < ActionController::TestCase
  setup do
    @business_type = business_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_types)
  end

  test "should create business_type" do
    assert_difference('BusinessType.count') do
      post :create, business_type: { name: @business_type.name }
    end

    assert_response 201
  end

  test "should show business_type" do
    get :show, id: @business_type
    assert_response :success
  end

  test "should update business_type" do
    put :update, id: @business_type, business_type: { name: @business_type.name }
    assert_response 204
  end

  test "should destroy business_type" do
    assert_difference('BusinessType.count', -1) do
      delete :destroy, id: @business_type
    end

    assert_response 204
  end
end
