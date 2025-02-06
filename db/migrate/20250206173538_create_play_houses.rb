class CreatePlayHouses < ActiveRecord::Migration[8.0]
  def change
    create_table :play_houses do |t|
      t.string :name
      t.integer :phone
      t.text :description
      t.string :timing
      t.references :location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
