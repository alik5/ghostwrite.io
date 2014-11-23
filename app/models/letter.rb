class Letter < ActiveRecord::Base
	belongs_to :user
	has_many :questions
	

	 def full_name
  	"#{self.first_name} #{self.last_name}"
	end

	
	def kind_of_letter
		"#{letter_type}"
	end

	
  	


	has_attached_file :photo


  
	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  

end