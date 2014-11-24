class AddTypeToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :letter_type_id, :integer
    
  end
end
