require 'test_helper'

class PickupListsControllerTest < ActionController::TestCase
  setup do
    @pickup_list = pickup_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickup_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup_list" do
    assert_difference('PickupList.count') do
      post :create, pickup_list: {  }
    end

    assert_redirected_to pickup_list_path(assigns(:pickup_list))
  end

  test "should show pickup_list" do
    get :show, id: @pickup_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup_list
    assert_response :success
  end

  test "should update pickup_list" do
    put :update, id: @pickup_list, pickup_list: {  }
    assert_redirected_to pickup_list_path(assigns(:pickup_list))
  end

  test "should destroy pickup_list" do
    assert_difference('PickupList.count', -1) do
      delete :destroy, id: @pickup_list
    end

    assert_redirected_to pickup_lists_path
  end
end
