class Ghostwrite < ActiveRecord::Base
	belongs_to :letters
	has_many :contacts

	has_attached_file :photo


  
	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

end