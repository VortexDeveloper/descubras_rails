class AddAttachmentLogoCoverToShopkeepers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :shopkeepers do |t|
      t.attachment :logo
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :shopkeepers, :logo
    remove_attachment :shopkeepers, :cover
  end
end
