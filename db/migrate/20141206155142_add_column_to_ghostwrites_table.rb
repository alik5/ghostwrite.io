class AddColumnToGhostwritesTable < ActiveRecord::Migration
  def change
  	add_column :ghostwrites, :text_box, :text
  end
end
