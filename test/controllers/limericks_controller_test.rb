require "test_helper"

class LimericksControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  test "should get index" do
    # Arrange (nothing to do for this test)
    # Act
    get root_url
    # Assert
    assert_response :success
  end

  test "should get new" do
    # Arrange
    user = users(:one)
    sign_in user
    # Act
    get new_limerick_url
    # Assert
    assert_response :success
  end

  test "should not get new if not signed in" do
    # Arrange (nothing to do for this test)
    # Act
    get new_limerick_url
    # Assert
    assert_response :redirect
    assert_redirected_to new_user_session_url
  end

  test "should create limerick" do
    # Arrange
    user = users(:one)
    sign_in user
    # Act
    assert_difference("Limerick.count", +1) do
      post limericks_url, params: {
        limerick: { 
          title: "Hello hello hello",
          limerick_text: "Hello hello hello\nHello hello hello\nHello hello hello\nHello hello hello\nHello hello hello"
        }
      }
    end
    # Assert
    assert_response :redirect
    assert_redirected_to root_url
  end

  test "should destroy limerick" do
    user = users(:one)
    sign_in user
    limerick = user.limericks.first
    assert_difference("Limerick.count", -1) do
      delete limerick_url(limerick)
    end
    assert_response :redirect
    assert_redirected_to root_url
  end

  test "should destroy other users limerick" do
    user_one = users(:one)
    user_two = users(:two)
    sign_in user_two
    limerick = user_one.limericks.first
    assert_difference("Limerick.count", 0) do
      delete limerick_url(limerick)
    end
    assert_response :redirect
  end

end
