class AddAttachmentCoImageVsToCoins < ActiveRecord::Migration[5.1]
  def self.up
    change_table :coins do |t|
      t.attachment :co_image_vs
    end
  end

  def self.down
    remove_attachment :coins, :co_image_vs
  end
end
