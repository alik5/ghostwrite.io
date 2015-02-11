class WelcomeController < ApplicationController
  def index
  		@letter= Letter.all
		@letter_types = LetterType.all
  end
  end

