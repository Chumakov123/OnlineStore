require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get index" do
    get user_url
    assert_response :success
  end

  test "should update User" do
    user = users(:one)

    patch user_url(order), params: { user: { login: 'boba'} }

    assert_redirected_to admin_user_path(user)
    # Перезагрузим связь, чтобы извлечь обновленные данные и убедиться, что заголовок обновлен.
    user.reload
    assert_equal 'boba', user.login
  end
  # end
end
