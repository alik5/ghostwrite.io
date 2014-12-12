class AddColumnToLetterTypes < ActiveRecord::Migration
  def change
    add_column :letter_fields, :if_business, :boolean
  end
end
