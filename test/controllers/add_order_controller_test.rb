require "test_helper"

class AddOrderControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get add_order_url
    assert_response :success
  end
  # end
end
