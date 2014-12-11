class Ghostwrite < ActiveRecord::Base
	belongs_to :letter
	has_many :contacts

	has_attached_file :photo
  
	

end

