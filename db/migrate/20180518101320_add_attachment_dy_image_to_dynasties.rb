class AddAttachmentDyImageToDynasties < ActiveRecord::Migration[5.1]
  def self.up
    change_table :dynasties do |t|
      t.attachment :dy_image
    end
  end

  def self.down
    remove_attachment :dynasties, :dy_image
  end
end
