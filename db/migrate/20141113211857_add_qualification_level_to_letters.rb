class AddQualificationLevelToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :qualification_level, :string
  end
end
