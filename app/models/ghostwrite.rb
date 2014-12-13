class Ghostwrite < ActiveRecord::Base
	belongs_to :letter
	has_many :contacts

	
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
    validates_attachment_content_type :photo, content_type: [ "image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf" ]

	attr_accessible :photo
	has_attached_file :photo,
	:storage => :s3,
	:s3_credentials=>{:access_key_id=>"AKIAIVMXYVUHIN3AID5Q",
	:secret_access_key => "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"},
	:s3_permissions => "public-read",
	:path => ":id",
	:bucket => "ghostwrite.io"



end

