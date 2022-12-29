require "test_helper"

class AddProductControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get add_product_url
    assert_response :success
  end
  # end
end
