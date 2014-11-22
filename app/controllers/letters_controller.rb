class LettersController < ApplicationController

 

  def new
    @letter = Letter.new
  end

  def custom_modal
    respond_to do |format|
      format.html
      format.js
    end

    @letter = Letter.new(letter_params)
    @letter.save
  end

  # GET /ghostwrites/1
  # GET /ghostwrites/1.json
  def create
  	@letter = Letter.new(letter_params)
  	@letter.save


  	end
  

def show
    @letter = Letter.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.js # show.js.erb
        format.json { render json: @letter }
    end
end

   def thank_you_note
    @letter = Letter.new

   end
  
   def networking
    @letter = Letter.new

   end

   def online_dating
    @letter = Letter.new

   end
 
   def keeping_in_touch
    @letter = Letter.new

   end

    def invitations
    @letter = Letter.new

   end
 

 private
    # Use callbacks to share common setup or constraints between actions.
    def letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:letter_type, :formal, :long, :qualification_level, :self_description, :user_comments, :user_id, :photo, :photo_file_name, :type_of_meeting, :answer)
    end

end