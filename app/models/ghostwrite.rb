class Ghostwrite < ActiveRecord::Base
	belongs_to :letter
	has_many :contacts

	
    

	
	has_attached_file :photo,
	:storage => :s3,
  	:bucket => ENV['S3_BUCKET_NAME']
  	styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'}
	

	validates_attachment_content_type :photo, content_type: [ "image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf" ]



end

