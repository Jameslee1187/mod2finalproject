class AddAddressToPotlucks < ActiveRecord::Migration[5.2]
  def change
    add_column :potlucks, :address, :string
  end
end
