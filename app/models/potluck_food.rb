class PotluckFood < ApplicationRecord
  belongs_to :user
  belongs_to :food_category
  belongs_to :potluck
end
