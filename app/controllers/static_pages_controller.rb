class StaticPagesController < ApplicationController
  respond_to :html
  layout 'application'
  layout "forms", :only => :examples


  
  def home	
  end

  def contact 
  end

  def search 
   @letter_types = LetterType.all
    respond_with(@letter_types)
  end

  def examples
      @letter = Letter.new(letter_type_id: params[:letter_type_id])
    
      @letter_types = LetterType.all

      respond_with(@letter_types)
  end

  def about
  end


  
end


  