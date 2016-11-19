require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest

  test "user signup test" do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {username: "username", email: "email@email.com", password: "password"}
      end
    assert_template 'users/show'
  end

end
