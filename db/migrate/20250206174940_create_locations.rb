class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :area
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
