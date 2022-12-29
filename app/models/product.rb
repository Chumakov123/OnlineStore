class Product < ApplicationRecord
  #validates :price => { :greater_than => 0 }
  validates :title, uniqueness: true, presence: true
  validates :price, presence: true
  validate :price_must_be_positive

  has_many :images

  def price_must_be_positive
    errors.add(:price, "must be positive") if
      price < 0
  end
end
