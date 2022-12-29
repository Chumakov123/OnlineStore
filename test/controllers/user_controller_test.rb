require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get user_url
    assert_response :success
  end
  # end
end
