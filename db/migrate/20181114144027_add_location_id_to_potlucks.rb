class AddLocationIdToPotlucks < ActiveRecord::Migration[5.2]
  def change
    add_column :potlucks, :location_id, :integer
  end
end
