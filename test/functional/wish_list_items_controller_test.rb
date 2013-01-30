require 'test_helper'

class WishListItemsControllerTest < ActionController::TestCase
  setup do
    @wish_list_item = wish_list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wish_list_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wish_list_item" do
    assert_difference('WishListItem.count') do
      post :create, wish_list_item: { available: @wish_list_item.available, category_id: @wish_list_item.category_id, product_id: @wish_list_item.product_id, timestamps: @wish_list_item.timestamps }
    end

    assert_redirected_to wish_list_item_path(assigns(:wish_list_item))
  end

  test "should show wish_list_item" do
    get :show, id: @wish_list_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wish_list_item
    assert_response :success
  end

  test "should update wish_list_item" do
    put :update, id: @wish_list_item, wish_list_item: { available: @wish_list_item.available, category_id: @wish_list_item.category_id, product_id: @wish_list_item.product_id, timestamps: @wish_list_item.timestamps }
    assert_redirected_to wish_list_item_path(assigns(:wish_list_item))
  end

  test "should destroy wish_list_item" do
    assert_difference('WishListItem.count', -1) do
      delete :destroy, id: @wish_list_item
    end

    assert_redirected_to wish_list_items_path
  end
end
