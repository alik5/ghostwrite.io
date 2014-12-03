class AddColumnToLetterFields < ActiveRecord::Migration
  def change
  	add_column :letter_fields, :short_name, :string
  end
end
