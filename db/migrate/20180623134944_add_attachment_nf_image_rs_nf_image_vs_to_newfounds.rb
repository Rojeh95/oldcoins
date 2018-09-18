class AddAttachmentNfImageRsNfImageVsToNewfounds < ActiveRecord::Migration[5.1]
  def self.up
    change_table :newfounds do |t|
      t.attachment :nf_image_rs
      t.attachment :nf_image_vs
    end
  end

  def self.down
    remove_attachment :newfounds, :nf_image_rs
    remove_attachment :newfounds, :nf_image_vs
  end
end
