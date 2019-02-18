class CreateSofas < ActiveRecord::Migration[5.2]
  def change
    create_table :sofas do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price_per_day
      t.integer :capacity
      t.integer :age
      t.integer :comfort
      t.boolean :wineproof
      t.boolean :bed

      t.timestamps
    end
  end
end
