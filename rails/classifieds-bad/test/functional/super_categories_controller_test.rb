require 'test_helper'

class SuperCategoriesControllerTest < ActionController::TestCase
  setup do
    @super_category = super_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_category" do
    assert_difference('SuperCategory.count') do
      post :create, super_category: { order: @super_category.order, title: @super_category.title }
    end

    assert_redirected_to super_category_path(assigns(:super_category))
  end

  test "should show super_category" do
    get :show, id: @super_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_category
    assert_response :success
  end

  test "should update super_category" do
    put :update, id: @super_category, super_category: { order: @super_category.order, title: @super_category.title }
    assert_redirected_to super_category_path(assigns(:super_category))
  end

  test "should destroy super_category" do
    assert_difference('SuperCategory.count', -1) do
      delete :destroy, id: @super_category
    end

    assert_redirected_to super_categories_path
  end
end
