class Letter < ActiveRecord::Base
	belongs_to :user
	belongs_to :letter_type
	store_accessor :properties, :origin, :company, :last_job, :one_word, :position, :achieve, :admire, :common_ground, :thanks, :remember, :their_name, :positive, :industry, :frequency, :pay, :rating, :mobile


	 def full_name
  	"#{self.first_name} #{self.last_name}"
	end

	
	def kind_of_letter
		"#{letter_type}"
	end




	
  


	has_attached_file :photo


  
	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  

end