require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  # test "the truth" do
  #   assert true
  # end
  
  test "test product" do
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:price].any?
  	assert product.errors[:description].any?
  end
  
  test "product price must be positive" do
  	product = Product.new(:title => "testov product",
  												:description => "testovo opisanie",
  												:image_url => "zaz.jpg")
  	product.price = -1
  	assert product.invalid?
  	assert_equal "must be greater than or equal to 0.01",
  		product.errors[:price].join('; ')

  	product.price = 0
  	assert product.invalid?
  	assert_equal "must be greater than or equal to 0.01",
  		product.errors[:price].join('; ')
  		
  	product.price = 1
  	assert product.valid?
  end	
  
end
