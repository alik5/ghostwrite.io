class GhostwritesController < ApplicationController
	layout 'home'
  respond_to :html



	
	def index 
		@ghostwrite = Ghostwrite.all
		

	end

	def new
	    @ghostwrite = Ghostwrite.new
	end
  
  def create
    @ghostwrite = Ghostwrite.create(ghostwrite_params)

  end

  def show
    @ghostwrite = Ghostwrite.find(params[:id])
     #if @ghostwrite.save
      #CustomMailer.mail_letter(@ghostwrite).deliver
  

  end

   
   

    def photo
    @user = Photo.find(params[:id])
    end

	private

	def ghostwrite
      @ghostwrite = Ghostwrite.find(params[:id])
    end
    

    def ghostwrite_params
      params.require(:ghostwrite).permit(:text_box, :string, :title, :photo, :photo_file_name, :photo_content_type, :letter_attributes => [ :user_id, :photo, :photo_file_name, :photo_content_type ])
    end
end
