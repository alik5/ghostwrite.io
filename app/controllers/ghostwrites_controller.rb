class GhostwritesController < ApplicationController
	layout 'home'

  respond_to :html
	
	def index 
		@ghostwrite = Ghostwrite.all
		@ghostwrite = Ghostwrite.new(params[:ghostwrites])

	end

	def new
	    @ghostwrite = Ghostwrite.new
	end

	def create
    @ghostwrite = Ghostwrite.new(params[:ghostwrites])
    @ghostwrite.request = request
    if @ghostwrite.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

	
	private
    

    def ghostwrite_params
      params.require(:ghostwrites).permit(:text_box, :string, :title, :letter_attributes => [ :user_id, :photo, :photo_file_name,])
    end

	
end
