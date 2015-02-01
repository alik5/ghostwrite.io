class GhostwritesController < ApplicationController
	layout 'application'
  respond_to :json



	
	def index 
		@ghostwrite = Ghostwrite.all
		

	end

	def new
	    @ghostwrite = Ghostwrite.new
	end
   
   def create
    @ghostwrite = Ghostwrite.new(ghostwrite_params)
    if @ghostwrite.save
      redirect_to @ghostwrite
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end


  def show
    @ghostwrite = Ghostwrite.find(params[:id])
 
    respond_to do |format|
      format.html
      format.pdf { render pdf: generate_pdf(@ghostwrite) }
      if @ghostwrite.save
        CustomMailer.mail_letter(@ghostwrite).deliver
      end
    end
  end

      
  

  
    
  def download
  redirect_to @ghostwrite.photo.expiring_url(10)
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
