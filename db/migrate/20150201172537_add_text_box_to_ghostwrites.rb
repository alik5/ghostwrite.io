class AddTextBoxToGhostwrites < ActiveRecord::Migration
  def change
  	add_column :ghostwrites, :wisi_box, :text
  end
end
