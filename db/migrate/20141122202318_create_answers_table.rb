class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.timestamps
    end
  end
end
