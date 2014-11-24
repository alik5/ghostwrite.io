class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.belongs_to :letter_type, index: true

      t.timestamps
    end
  end
end
