class AddColumnToLetterTypes2 < ActiveRecord::Migration
  def change
  	add_column :letter_types, :category, :string
  end
end
