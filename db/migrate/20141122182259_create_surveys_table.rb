class CreateSurveysTable < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
    	t.string :questions
    	t.timestamps
    end
  end
end
