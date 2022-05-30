class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :price_per_day
      t.integer :year
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
