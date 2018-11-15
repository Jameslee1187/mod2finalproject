class AddDateToPotlucks < ActiveRecord::Migration[5.2]
  def change
    add_column :potlucks, :date, :datetime
  end
end
