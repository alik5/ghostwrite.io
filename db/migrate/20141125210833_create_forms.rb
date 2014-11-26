class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :question_one
      t.string :question_two
      t.string :question_three
      t.string :question_four

      t.timestamps
    end
  end
end
