require "test_helper"

class JournalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @journal = Journal.new
    @journal.title = 'Bicol'
    @journal.content = 'Spicy dish'
  end

  test "Must have a title and content to create a journal" do
    assert_not @journal.save, "Saved without complete details"
  end
end
