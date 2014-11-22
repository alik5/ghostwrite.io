class Answer < ActiveRecord::Base
	belongs_to :letters
	belongs_to :questions
end