class RemoveAnswersColumn < ActiveRecord::Migration
  def change
  	remove_column :letters, :answers
  end
end
