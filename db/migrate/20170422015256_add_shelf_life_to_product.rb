class AddShelfLifeToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :shelf_life, :date
  end
end
