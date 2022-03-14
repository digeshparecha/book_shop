require 'test_helper'

class Admin::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = admin_categories(:one)
  end

  test "should get index" do
    get admin_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_category_url
    assert_response :success
  end

  test "should create admin_category" do
    assert_difference('Admin::Category.count') do
      post admin_categories_url, params: { admin_category: { name: @category.name, slug: @category.slug } }
    end

    assert_redirected_to admin_category_url(Admin::Category.last)
  end

  test "should show admin_category" do
    get admin_category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_category_url(@category)
    assert_response :success
  end

  test "should update admin_category" do
    patch admin_category_url(@category), params: { admin_category: { name: @category.name, slug: @category.slug } }
    assert_redirected_to admin_category_url(@category)
  end

  test "should destroy admin_category" do
    assert_difference('Admin::Category.count', -1) do
      delete admin_category_url(@category)
    end

    assert_redirected_to admin_categories_url
  end
end
