class CreateGhostwrites < ActiveRecord::Migration
  def change
    create_table :ghostwrites do |t|
      t.string :title
      t.string :string
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
