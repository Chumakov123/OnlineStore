require "test_helper"

class OrderControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get order_url
    assert_response :success
  end


  # end
end
