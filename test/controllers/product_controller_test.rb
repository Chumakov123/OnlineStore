require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get product_url
    assert_response :success
  end

  test "should update product" do
    product = products(:one)

    patch user_url(order), params: { product: { title: 'boba'} }

    assert_redirected_to product_path(user)
    # Перезагрузим связь, чтобы извлечь обновленные данные и убедиться, что заголовок обновлен.
    user.reload
    assert_equal 'boba', product.title
  end
  # end
end
