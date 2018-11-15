class FoodCategory < ApplicationRecord
  has_many :potluck_foods
  has_many :users, through: :potluck_foods
  has_many :potlucks, through: :potluck_foods
end
