require "test_helper"

class AdminUserTest < ActiveSupport::TestCase
  # test "the truth" do
  test "validAdminUser1" do
    AdminUser = AdminUser.new(login: nil,  email: 'bla@yandex.ru', password: '123', telephone_number: '892818000')
    assert_not AdminUser.save
  end
  test "validAdminUser2" do
    AdminUser = AdminUser.new(login: 'boba',  email: 'bl.!ru',password: '123',  telephone_number: nil)
    assert_not AdminUser.save
  end
  test "validAdminUser3" do
    AdminUser = AdminUser.new(login: 'boba',  email: 'blayandex.!ru',password: nil,  telephone_number: '892818000')
    assert_not AdminUser.save
  end
  test "validAdminUser4" do
    Adminuser =AdminUser.new(login: 'boba',  email: nil,password: '123',  telephone_number: '892818000')
    assert_not AdminUser.save
  end
  test "validAdminUser5" do
    AdminUser = AdminUser.new(login: 'boba',  email: 'blayandex.!ru', password: '123', telephone_number: '892818000')
    assert AdminUser.save
  end
  test "validAdminUser6" do
    AdminUser = AdminUser.new(login: 'boba',  email: 'blayandex.!ru', password: '123', telephone_number: '892818000')
    AdminUser2 = AdminUser.new(login: 'boba',  email: 'blayandex.!ru', password: '123', telephone_number: '892818000')
    assert_not AdminUser2.save
  end
  # end
  # end
end
