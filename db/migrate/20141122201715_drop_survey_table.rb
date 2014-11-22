class DropSurveyTable < ActiveRecord::Migration
  def change
  	 revert do
      create_table(:survey) do |t|
        t.string   :questions
   		t.datetime :created_at
    	t.datetime :updated_at
    	end
     end
  end
end
