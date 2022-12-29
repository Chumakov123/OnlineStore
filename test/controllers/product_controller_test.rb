require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get product_url
    assert_response :success
  end
  # end
end
