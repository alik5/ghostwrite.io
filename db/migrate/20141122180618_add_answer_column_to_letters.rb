class AddAnswerColumnToLetters < ActiveRecord::Migration
  def change
  	add_column :letters, :answers, :hstore
  end
end
