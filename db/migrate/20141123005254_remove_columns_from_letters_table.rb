class RemoveColumnsFromLettersTable < ActiveRecord::Migration
  def change
  	remove_column :letters, :formal
  	remove_column :letters, :long
  	remove_column :letters, :self_description
  	remove_column :letters, :qualification_level
  	remove_column :letters, :type_of_meeting
  	remove_column :letters, :avatar_file_name
  	remove_column :letters, :avatar_content_type
  	remove_column :letters, :avatar_file_size
  	remove_column :letters, :avatar_updated_at
  	add_column :letters, :category, :string
  end
end
