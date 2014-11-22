class Answer < ActiveRecord::Base
	before_filter :prepare_questions 
	belongs_to :letters
	belongs_to :questions


	

private

def prepare_questions
  @questions = Question.all
end
end