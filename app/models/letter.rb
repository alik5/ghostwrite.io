class Letter < ActiveRecord::Base
	belongs_to :user

	 def full_name
  	"#{self.first_name} #{self.last_name}"
	end

	
	def kind_of_letter
		"#{letter_type}"
	end

	
	has_attached_file :photo,:styles => { :small => "150x150>" }

	has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
	validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end