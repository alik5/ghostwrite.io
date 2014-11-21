class AddPropertiesToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :properties, :hstore
  end
end
