require "test_helper"

class LimericksControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    # Arrange (nothing to do for this test)
    # Act
    get root_url
    # Assert
    assert_response :success
  end

end
