class CreateShopkeepers < ActiveRecord::Migration[5.1]
  def change
    create_table :shopkeepers do |t|
      t.references :user, foreign_key: true
      t.string :social_name
      t.string :fantasy_name
      t.string :cnpj
      t.text :about_us
      t.text :operating_hours

      t.timestamps
    end
  end
end
