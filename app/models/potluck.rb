class Potluck < ApplicationRecord
  has_many :potluck_foods
  has_many :users, through: :potluck_foods
  has_many :food_categories, through: :potluck_foods
  belongs_to :location
end
