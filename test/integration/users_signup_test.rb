require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 	test "valid signup information" do
		get signup_path
		assert_difference 'User.count' do
			post_via_redirect users_path, user: {name: "aaaaaaa", email: "user@gmail.com", password: "123456",password_confirmation: "123456"}
		end
		assert_template 'users/show'
 	end
end
