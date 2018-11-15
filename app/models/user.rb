class User < ApplicationRecord
  has_many :potluck_foods
  has_many :food_categories, through: :potluck_foods
  has_many :potlucks, through: :potluck_foods
  validates :name, presence: true, uniqueness: true
  validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
  validates :location, presence: true
end
