class CreateLetterTypes < ActiveRecord::Migration
  def change
    create_table :letter_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
