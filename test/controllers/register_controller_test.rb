require "test_helper"

class RegisterControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get register_url
    assert_response :success
  end
  # end
end
