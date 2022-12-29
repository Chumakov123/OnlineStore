require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should update category" do
    category = categories(:one)

    patch add_category_url(categories), params: { category: { title: 'boba'} }

    assert_redirected_to category_path(category)
    # Перезагрузим связь, чтобы извлечь обновленные данные и убедиться, что заголовок обновлен.
    user.reload
    assert_equal 'boba', user.login
  end
  # end
end
