require "application_system_test_case"

class UserDevsTest < ApplicationSystemTestCase
  setup do
    @user_dev = user_devs(:one)
  end

  test "visiting the index" do
    visit user_devs_url
    assert_selector "h1", text: "User Devs"
  end

  test "creating a User dev" do
    visit user_devs_url
    click_on "New User Dev"

    fill_in "Email", with: @user_dev.email
    fill_in "First name", with: @user_dev.first_name
    fill_in "Image url", with: @user_dev.image_url
    fill_in "Last name", with: @user_dev.last_name
    fill_in "Locale", with: @user_dev.locale
    fill_in "Password", with: @user_dev.password
    fill_in "Password confirmation", with: @user_dev.password_confirmation
    click_on "Create User dev"

    assert_text "User dev was successfully created"
    click_on "Back"
  end

  test "updating a User dev" do
    visit user_devs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user_dev.email
    fill_in "First name", with: @user_dev.first_name
    fill_in "Image url", with: @user_dev.image_url
    fill_in "Last name", with: @user_dev.last_name
    fill_in "Locale", with: @user_dev.locale
    fill_in "Password", with: @user_dev.password
    fill_in "Password confirmation", with: @user_dev.password_confirmation
    click_on "Update User dev"

    assert_text "User dev was successfully updated"
    click_on "Back"
  end

  test "destroying a User dev" do
    visit user_devs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User dev was successfully destroyed"
  end
end
