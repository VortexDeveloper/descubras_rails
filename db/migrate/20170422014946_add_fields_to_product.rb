class AddFieldsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :shelf_life, :string
    add_column :products, :type, :integer
  end
end
