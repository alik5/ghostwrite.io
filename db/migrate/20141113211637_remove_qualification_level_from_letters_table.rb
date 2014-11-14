class RemoveQualificationLevelFromLettersTable < ActiveRecord::Migration
  def change
    remove_column :letters, :qualification_level, :integer
  end
end
