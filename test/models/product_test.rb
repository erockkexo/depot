require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	fixtures :products

	test "Unique titles" do
		product = Product.new( title: products(:Ruby).title, description: "yyy", price: 1, image_url: "7apps.jpg")
		assert product.invalid?
		assert_equal ["has already been taken"], product.errors[:title]
	end

	#test "product attributes must not be empty" do 
#
	##	product = Product.new
	#	assert product.invalid?
	#	assert product.errors[:title].any?
	#	assert product.errors[:description].any?
	#	assert product.errors[:image_url].any?
	#	assert product.errors[:price].any?
	#end

	#test "product price must be positive" do

	#	product = Product.new( title: "My book title", description: "Bla bla", image_url: "7apps.jpg")

	#	product.price = -1
	#	assert product.invalid?
	#	assert_equal ["must be equal to our greater than 0.01"], product.errors[:price]

	#	product.price = 0
	#	assert product.invalid?
	#	assert_equal ["must be equal to or greater than 0.01"], product.errors[:price]

	#	product.price = 1
	#	assert product.valid?
	#end


end
