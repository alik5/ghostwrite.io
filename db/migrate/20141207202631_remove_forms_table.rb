class RemoveFormsTable < ActiveRecord::Migration
  def change
  	 
    drop_table :forms

  end
end
