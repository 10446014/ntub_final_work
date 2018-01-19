class AddAttachmentImageToOrganics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :organics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :organics, :image
  end
end
