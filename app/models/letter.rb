class Letter < ActiveRecord::Base
	belongs_to :user
	belongs_to :letter_type
	has_many :letter_fields
	has_many :ghostwrites
	store_accessor :properties, :origin, :company, :last_job, :one_word, :position, :achieve, :admire, :common_ground, :thanks, :remember, :their_name, :positive, :industry, :frequency, :pay, :rating, :mobile, :reason, :skill1, :skill2, :background, :reason 


	 def full_name
  	"#{self.first_name} #{self.last_name}"
	end

	
	def kind_of_letter
		"#{letter_type}"
	end

	
    




	
  


	

  

end