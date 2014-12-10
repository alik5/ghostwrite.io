class GhostwritesController < ApplicationController
	layout 'home'



	
	def index 
		@ghostwrite = Ghostwrite.all
		@ghostwrite = Ghostwrite.new(ghostwrite_params)

	end

	def new
	    @ghostwrite = Ghostwrite.new
	end

	def create
    @ghostwrite = Ghostwrite.new(ghostwrite_params)
    
 	respond_to do |format|
      if @ghostwrite.save
      CustomMailer.custom_message(@ghostwrite).deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
        end
      end
	end

	private
    

    def ghostwrite_params
      params.require(:ghostwrite).permit(:text_box, :string, :title, :letter_attributes => [ :user_id, :photo, :photo_file_name, :photo_content_type ])
    end
end
