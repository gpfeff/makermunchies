require 'test_helper'

class DeliveryListsControllerTest < ActionController::TestCase
  setup do
    @delivery_list = delivery_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_list" do
    assert_difference('DeliveryList.count') do
      post :create, delivery_list: {  }
    end

    assert_redirected_to delivery_list_path(assigns(:delivery_list))
  end

  test "should show delivery_list" do
    get :show, id: @delivery_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_list
    assert_response :success
  end

  test "should update delivery_list" do
    patch :update, id: @delivery_list, delivery_list: {  }
    assert_redirected_to delivery_list_path(assigns(:delivery_list))
  end

  test "should destroy delivery_list" do
    assert_difference('DeliveryList.count', -1) do
      delete :destroy, id: @delivery_list
    end

    assert_redirected_to delivery_lists_path
  end
end
