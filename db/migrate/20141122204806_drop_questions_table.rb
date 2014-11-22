class DropQuestionsTable < ActiveRecord::Migration
  def change

  	 revert do 
  	 	create_table(:questions_tables) do |t|
      
    	end
     end
  end
end

  
