class LetterType < ActiveRecord::Base
	has_many :fields, class_name: "LetterField"
	accepts_nested_attributes_for :fields
end
