class AddAttachmentRuImageToRulers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :rulers do |t|
      t.attachment :ru_image
    end
  end

  def self.down
    remove_attachment :rulers, :ru_image
  end
end
