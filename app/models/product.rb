class Product < ApplicationRecord
  belongs_to :category
  has_many :pictures
  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
end
