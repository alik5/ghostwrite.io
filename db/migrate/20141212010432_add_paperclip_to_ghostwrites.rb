class AddPaperclipToGhostwrites < ActiveRecord::Migration
  def self.up
    add_attachment :ghostwrites, :photo
  end

  def self.down
    remove_attachment :ghostwrites, :photo
  end
end
