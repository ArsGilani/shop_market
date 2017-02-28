# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'

female = Category.create( name: 'Женские', description: FFaker::LoremRU.phrase )
male = Category.create( name: 'Мужские', description: FFaker::LoremRU.phrase )
child = Category.create( name: 'Детские', description: FFaker::LoremRU.phrase )

[female, male, child].each do |cat|
	arr = []
	arr << Category.create( name: 'Обувь', description: FFaker::LoremRU.phrase, parent_category_id: cat.id )
	arr << Category.create( name: 'Рубашки', description: FFaker::LoremRU.phrase, parent_category_id: cat.id )
	arr << Category.create( name: 'Джинсы', description: FFaker::LoremRU.phrase, parent_category_id: cat.id )
	count = 1
	arr.each do |c|
		
		product = Product.create(title: FFaker::Product.product_name, details: FFaker::LoremRU.phrase, price: count *10, category_id: c.id )
		dir = Rails.root + 'app' + 'assets' + 'images' + "pic-#{count}.jpg"
		dir2 = Rails.root + 'app' + 'assets' + 'images' + "pic-#{count + 1}.jpg"
		Picture.create!(title: 'pic', image: File.new(dir), product_id: product.id)
		Picture.create!(title: 'pic', image: File.new(dir2), product_id: product.id)
		
		count += 2	
	end
end