class Product < ApplicationRecord
  #validates :price => { :greater_than => 0 }

  has_many :images
end
