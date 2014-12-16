class ChangeCategoryToInt < ActiveRecord::Migration
  def change
  	remove_column :letter_types, :category, :string
  	add_column :letter_types, :category, :integer
  end
end
