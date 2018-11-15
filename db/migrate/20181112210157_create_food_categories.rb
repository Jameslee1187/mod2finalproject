class CreateFoodCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :food_categories do |t|
      t.string :name
      # t.string :entree_name
      # t.string :dessert_name
      # t.string :drink_name
      # t.boolean :appetizer
      # t.boolean :entree
      # t.boolean :dessert
      # t.boolean :drink
      t.timestamps
    end
  end
end
