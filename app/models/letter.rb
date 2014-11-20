class Letter < ActiveRecord::Base
	belongs_to :user

	 def full_name
  	"#{self.first_name} #{self.last_name}"
	end

	
	def kind_of_letter
		"#{letter_type}"
	end

	has_attached_file :photo
	
end