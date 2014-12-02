class LetterField < ActiveRecord::Base
  belongs_to :letter_type
  has_many :answers

def increment(attribute, by = 1)
  self[attribute] ||= 0
  self[attribute] += by
  self
end
	

  
end
