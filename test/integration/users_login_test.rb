require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
	def setup
	  @user = users(:ashutosh)
	end


  test "verifying that invalid login is not allowed" do
  	get login_path
  	assert_template 'sessions/new'
  	post login_path params: { session:{email: "", password:""}}
  	assert_template 'sessions/new'
  	assert_not flash.empty?
  	get root_path
  	assert flash.empty?
  end

  test "login with valid information and logout" do
  	get login_path
  	post login_path params: {session: {email: @user.email, password: "password"}}
  	assert_redirected_to @user # To check that we are redirected to user profile page.
  	follow_redirect! # To visit the redirected page.
  	assert_template 'users/show' 
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)

    #Checking logout.
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count:0
    assert_select "a[href=?]", user_path(@user), count:0
  end
end