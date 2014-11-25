class LettersController < ApplicationController
respond_to :html
 def index
    @letter = Letter.all
  end

  def new
   # @letter = Letter.new
    @letter = Letter.new(letter_type_id: params[:letter_type_id])

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
  	 @leter = Letter.new(params[:letter])
    if @letter.save
      redirect_to @letter, notice: 'Product was successfully created.'
    else
      render action: "new"
    end
  end

   def update
    @letter = Letter.find(params[:id])
    if @letter.update_attributes(params[:letter])
      redirect_to @letter, notice: 'Product was successfully updated.'
    else
      render action: "edit"
    end
  end
  	


  	end

    def edit
      @letter = Letter.find(params[:id])
    
   end
  

def show
    @letter = Letter.all
    end

 

 private
    # Use callbacks to share common setup or constraints between actions.
    def letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:letter_type, :name, :user_id, :photo, :photo_file_name, :category, :letter_type_id).tap do |whitelisted|
    whitelisted[:properties] = params[:letter][:properties]
  end
end
    


