class AddAttachmentImageToRamblings < ActiveRecord::Migration
  def self.up
    change_table :ramblings do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :ramblings, :image
  end
end
