require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  test "validUser1" do
    user = User.new(login: nil,  email: 'bla@yandex.ru', password: '123', telephone_number: '892818000')
    assert_not user.save
  end
  test "validUser2" do
    user = User.new(login: 'boba',  email: 'bl.!ru',password: '123',  telephone_number: nil)
    assert_not user.save
  end
  test "validUser3" do
    user = User.new(login: 'boba',  email: 'blayandex.!ru',password: nil,  telephone_number: '892818000')
    assert_not user.save
  end
  test "validUser4" do
    user = User.new(login: 'boba',  email: nil,password: '123',  telephone_number: '892818000')
    assert_not user.save
  end
  test "validUser5" do
    user = User.new(login: 'boba',  email: 'blayandex.!ru', password: '123', telephone_number: '892818000')
    assert user.save
  end
  test "validUser6" do
    user = User.new(login: 'boba',  email: 'blayandex.!ru', password: '123', telephone_number: '892818000')
    user2 = User.new(login: 'boba',  email: 'blayandex.!ru', password: '123', telephone_number: '892818000')
    assert_not user2.save
  end
  # end
end
