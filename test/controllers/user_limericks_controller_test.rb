require "test_helper"

class UserLimericksControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  test "should get index for signed-in user" do
    # Arrange
    user = users(:one)
    sign_in user
    # Act
    get user_limericks_url(user)
    # Assert
    assert_response :success
  end

  test "should get index for user other than signed-in user" do
    # Arrange
    user_one = users(:one)
    sign_in user_one
    user_two = users(:two)
    # Act
    get user_limericks_url(user_two)
    # Assert
    assert_response :success
  end

end
