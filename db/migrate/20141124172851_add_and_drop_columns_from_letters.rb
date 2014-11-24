class AddAndDropColumnsFromLetters < ActiveRecord::Migration
  def change
  	remove_column :letters, :user_comments
  	remove_column :letters, :props
  	add_column :letters, :name, :string
  end
end
