require 'test_helper'

class UserDevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_dev = user_devs(:one)
  end

  test "should get index" do
    get user_devs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_dev_url
    assert_response :success
  end

  test "should create user_dev" do
    assert_difference('UserDev.count') do
      post user_devs_url, params: { user_dev: { email: @user_dev.email, first_name: @user_dev.first_name, image_url: @user_dev.image_url, last_name: @user_dev.last_name, locale: @user_dev.locale, password: @user_dev.password, password_confirmation: @user_dev.password_confirmation } }
    end

    assert_redirected_to user_dev_url(UserDev.last)
  end

  test "should show user_dev" do
    get user_dev_url(@user_dev)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_dev_url(@user_dev)
    assert_response :success
  end

  test "should update user_dev" do
    patch user_dev_url(@user_dev), params: { user_dev: { email: @user_dev.email, first_name: @user_dev.first_name, image_url: @user_dev.image_url, last_name: @user_dev.last_name, locale: @user_dev.locale, password: @user_dev.password, password_confirmation: @user_dev.password_confirmation } }
    assert_redirected_to user_dev_url(@user_dev)
  end

  test "should destroy user_dev" do
    assert_difference('UserDev.count', -1) do
      delete user_dev_url(@user_dev)
    end

    assert_redirected_to user_devs_url
  end
end
