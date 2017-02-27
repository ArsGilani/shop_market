class Category < ApplicationRecord
  belongs_to :parent_category, class_name: 'Category', optional: true
  has_many :child_categories, 
  			class_name: 'Category', 
  			foreign_key: 'parent_category_id', 
  			dependent: :destroy
  has_many :products
end
