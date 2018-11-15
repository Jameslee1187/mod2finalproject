class RemoveDateFromPotlucks < ActiveRecord::Migration[5.2]
  def change
    remove_column :potlucks, :date, :datetime
  end
end
