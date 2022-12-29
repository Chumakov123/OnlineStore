require "test_helper"

class AdminUserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should update adminUser" do
    admin_user = admin_users(:one)

    patch admin_user_url(order), params: { admin_user: { login: 'boba'} }

    assert_redirected_to admin_user_path(admin_user)
    # Перезагрузим связь, чтобы извлечь обновленные данные и убедиться, что заголовок обновлен.
    admin_user.reload
    assert_equal 'boba', admin_user.login
  end
  # end
end
