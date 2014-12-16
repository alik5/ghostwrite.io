class LetterType < ActiveRecord::Base
	has_many :letter_fields, class_name: "LetterField"
	has_many :answers
	accepts_nested_attributes_for :letter_fields
	accepts_nested_attributes_for :answers

 

end

