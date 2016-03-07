require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "example user", email: "user@example.com")
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
  	@user.name = "   "
  	assert_not @user.valid?
  end
end
>>>>>>> modeling-users