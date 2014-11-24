class Answer < ActiveRecord::Base
  belongs_to :letter_type
  belongs_to :fields
end
