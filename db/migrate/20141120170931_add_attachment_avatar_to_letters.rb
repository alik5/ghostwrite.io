class AddAttachmentAvatarToLetters < ActiveRecord::Migration
  def self.up
    change_table :letters do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :letters, :avatar
  end
end
