class RemoveShelfLifeFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :shelf_life, :string
  end
end
