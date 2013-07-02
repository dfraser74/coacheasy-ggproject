class AddAttachmentAvatarToCoaches < ActiveRecord::Migration
  def self.up
    change_table :coaches do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :coaches, :avatar
  end
end
