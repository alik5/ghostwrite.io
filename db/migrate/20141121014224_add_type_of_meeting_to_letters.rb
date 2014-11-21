class AddTypeOfMeetingToLetters < ActiveRecord::Migration
  def change
  	add_column :letters, :type_of_meeting, :string
  end
end
