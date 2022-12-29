require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  test "validCategory1" do
    product = Product.new( title: nil )
    assert_not product.save
  end
  test "validCategory2" do
    product = Product.new( title: 'bla')
    assert product.save
  end
  test "validCategory3" do
    product = Product.new( title: 'bla' )
    product2 = Product.new( title: 'bla' )
    assert_not product2.save
  end
  # end
end
