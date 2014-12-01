class LetterField < ActiveRecord::Base
  belongs_to :letter_type
  has_many :answers

  
end
