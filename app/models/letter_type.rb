class LetterType < ActiveRecord::Base
	has_many :fields, class_name: "LetterField"
	has_many :answers
	accepts_nested_attributes_for :fields
	accepts_nested_attributes_for :answers
end
