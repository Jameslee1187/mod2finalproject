class CreatePotlucks < ActiveRecord::Migration[5.2]
  def change
    create_table :potlucks do |t|
      t.integer :attendees
      t.string :description

      t.timestamps
    end
  end
end
