require "test_helper"

class LoginControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get logout_url
    assert_response :success
  end
  # end
end
