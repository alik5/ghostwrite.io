class LetterField < ActiveRecord::Base
  belongs_to :letter_type
  has_many :answers
  accepts_nested_attributes_for :answers
  
end
