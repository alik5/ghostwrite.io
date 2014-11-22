class RemoveQuestionsColumnFromSurvey < ActiveRecord::Migration
  def change
  	remove_column :surveys, :questions
  end
end
