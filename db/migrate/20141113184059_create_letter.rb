class CreateLetter < ActiveRecord::Migration
  def change
    create_table :letters do |t|
  		t.string :letter_type
  		t.boolean :formal
  		t.boolean :long
  		t.integer :qualification_level
  		t.text :self_description
  		t.text :user_comments
 
 		t.timestamps
    end
  end
end
