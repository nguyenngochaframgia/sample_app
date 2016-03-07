require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 	test "invalid signup information" do
		get signup_path
		assert_no_difference 'User.count' do
			post users_path, user: {name: "", email: "user@gmail.com", password: "1234",password_confirmation: "123"}
		end
		assert_template 'users/new'
 	end
end
