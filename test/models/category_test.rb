require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @category = Category.new
    @category.name = 'Food'
    @category.description = 'desert'
  end

  test "Must have a name, content to create a category" do
    @category.save
    assert :success
  end
end
