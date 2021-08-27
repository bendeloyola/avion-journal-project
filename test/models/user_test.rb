require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "username is required" do
    user = User.new
    # user.username = 'Ben'
    user.password = 'password'

    assert_not user.save, "Saved the user without a username"
  end

  test "password is required" do
    pass = User.new
    pass.username = 'Ben'

    assert_not  pass.save, "Saved the user without a password"
  end
end 
