class Ghostwrite < ActiveRecord::Base
	belongs_to :letter
	has_many :contacts

	
    

	
	has_attached_file :photo,
	:storage => :s3,
  	:bucket => ENV['S3_BUCKET_NAME']
	

	validates_attachment_content_type :photo, content_type: [ "image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf" ]



end

