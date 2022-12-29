require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  test "validProduct1" do
    product = Product.new( title: nil, price: '20', category_id: '10'  )
    assert_not product.save
  end
  test "validProduct2" do
    product = Product.new( title: 'bla', price: nil, category_id: '10'  )
    assert_not product.save
  end
  test "validProduct3" do
    product = Product.new( title: 'bla', price: '-20', category_id: '10'  )
    assert_not product.save
  end
  test "validProduct4" do
    product = Product.new( title: 'bla', price: '20', category_id: nil  )
    assert_not product.save
  end
  test "validProduct5" do
    product = Product.new( title: 'bla', price: '20', category_id: '10'  )
    assert product.save
  end
  test "validProduct1" do
    product = Product.new( title: 'bla', price: '20', category_id: '10'  )
    product2 = Product.new( title: 'bla', price: '20', category_id: '10'  )
    assert_not product2.save
  end
  # end
end
