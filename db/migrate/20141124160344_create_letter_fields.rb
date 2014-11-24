class CreateLetterFields < ActiveRecord::Migration
  def change
    create_table :letter_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :letter_type, index: true

      t.timestamps
    end
  end
end
