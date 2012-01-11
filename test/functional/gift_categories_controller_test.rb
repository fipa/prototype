require 'test_helper'

class GiftCategoriesControllerTest < ActionController::TestCase
  setup do
    @gift_category = gift_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_category" do
    assert_difference('GiftCategory.count') do
      post :create, :gift_category => @gift_category.attributes
    end

    assert_redirected_to gift_category_path(assigns(:gift_category))
  end

  test "should show gift_category" do
    get :show, :id => @gift_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gift_category.to_param
    assert_response :success
  end

  test "should update gift_category" do
    put :update, :id => @gift_category.to_param, :gift_category => @gift_category.attributes
    assert_redirected_to gift_category_path(assigns(:gift_category))
  end

  test "should destroy gift_category" do
    assert_difference('GiftCategory.count', -1) do
      delete :destroy, :id => @gift_category.to_param
    end

    assert_redirected_to gift_categories_path
  end
end
