class AddAttachmentCImageToCities < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cities do |t|
      t.attachment :c_image
    end
  end

  def self.down
    remove_attachment :cities, :c_image
  end
end
