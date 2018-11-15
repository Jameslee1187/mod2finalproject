class CreatePotluckFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :potluck_foods do |t|
      t.references :user, foreign_key: true
      t.references :food_category, foreign_key: true
      t.references :potluck, foreign_key: true
      t.integer :rating
      t.string :review

      t.timestamps
    end
  end
end
