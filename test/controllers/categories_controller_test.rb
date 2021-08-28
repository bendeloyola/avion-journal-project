require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categories_path
    assert_response :success
  end

  test "should get show" do
    # assert_routing category_path(1), controller: 'categories', action: 'show', id: '1'
    get categories_path(1)
    assert_response :success
  end

  test "should get new" do
    @category = Category.new
    @category.name = 'Fruits'
    @category.description = 'Sweet'
    # get edit_category_path(1)
    @category.save
    assert :success
  end

  test "should get edit" do
    get edit_category_path(1)
    assert_response :success
  end

  test "should get update" do
    get categories_path(1)
    assert_response :success
  end

  test "should get destroy" do
    get categories_path(1)
    assert_response :success
  end
end
