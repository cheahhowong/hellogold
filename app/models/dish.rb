class Dish < ApplicationRecord
  has_many :relationships
  has_many :restaurants, through: :relationships
end
