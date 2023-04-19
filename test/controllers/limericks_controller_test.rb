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

end
