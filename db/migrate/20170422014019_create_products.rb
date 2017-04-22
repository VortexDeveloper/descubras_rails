class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :discount_percentage
      t.references :shopkeeper, foreign_key: true

      t.timestamps
    end
  end
end
