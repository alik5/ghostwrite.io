class AddZipcodeToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :zipcode, :string
  end
end
