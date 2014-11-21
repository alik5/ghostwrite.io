class IndexLetterProperties < ActiveRecord::Migration
 
  def up
  	execute "CREATE INDEX letters_properties ON letters USING GIN(PROPERTIES)"
  end

  def down
  	execute "DROP INDEX letters_properties"
  end
end
