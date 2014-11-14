class LettersController < ApplicationController

  def index
  	@letter = Letter.new
  end

  def new
    @letter = Letter.new
  end

  # GET /ghostwrites/1
  # GET /ghostwrites/1.json
  def create
  	@letter = Letter.new(params[:letter])
  	if @letter.save redirect to new_letter_path
  	end
  end

  # GET /ghostwrites/new
 

 private
    # Use callbacks to share common setup or constraints between actions.
    def letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ghostwrite_params
      params.require(:letter).permit(:letter_type, :formal, :long, :qualification_level, :self_description, :user_comments)
    end

end
