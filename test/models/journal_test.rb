require "test_helper"

class JournalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @journal = Journal.new
    @journal.title = 'Bicol'
    @journal.content = 'Spicy dish'

    @category = Category.new
    @category.name = 'Food'
    @category.description = 'Spicy'
  end

  test "Must have a title, content to create a journal" do
    assert_not @journal.save, "Saved without complete details"
  end

  test "Must create journal with category" do
    @category.save
    new_category = Category.first
    created_with_category = new_category.journals.new(title: "Burger", content: "Food").save
    assert created_with_category, "Not saved with category"
  end
end
