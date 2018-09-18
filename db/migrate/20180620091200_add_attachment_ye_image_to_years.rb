class AddAttachmentYeImageToYears < ActiveRecord::Migration[5.1]
  def self.up
    change_table :years do |t|
      t.attachment :ye_image
    end
  end

  def self.down
    remove_attachment :years, :ye_image
  end
end
