class StaticPagesController < ApplicationController
  respond_to :html
  layout 'application'


  
  def home
  	
  end

  def examples
      @letter = Letter.new(letter_type_id: params[:letter_type_id])
    
      @letter_types = LetterType.all

      respond_with(@letter_types)
  end

  def about
  end
end