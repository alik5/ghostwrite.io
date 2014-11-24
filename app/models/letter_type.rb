class LetterType < ActiveRecord::Base
	has_many :fields, class_name: "LetterField"
end
