class Category < ApplicationRecord
  validates :title, uniqueness: true, presence: true
end
