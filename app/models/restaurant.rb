class Restaurant < ApplicationRecord
  has_many :relationships
  has_many :dishes, through: :relationships
end
