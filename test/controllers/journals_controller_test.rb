require "test_helper"

class JournalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get journals_path
    assert_response :success
  end

  test "should get show" do
    get journals_path(1)
    assert_response :success
  end

  test "should get new" do
    @journal = Journal.new
    @journal.title = 'Apple'
    @journal.content = 'Red'
    @journal.save
    assert :success
  end

  test "should get edit" do
    get journals_path(1)
    assert_response :success
  end

  test "should get update" do
    get journals_path(1)
    assert_response :success
  end

  test "should get destroy" do
    get journals_path(1)
    assert_response :success
  end
  
end
