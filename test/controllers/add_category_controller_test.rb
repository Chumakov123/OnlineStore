require "test_helper"

class AddCategoryControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get add_category_url
    assert_response :success
    end
  # end
end
