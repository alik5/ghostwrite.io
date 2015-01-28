class AddHintToLetterFields < ActiveRecord::Migration
  def change
  	add_column :letter_fields, :hint, :text
  end
end
