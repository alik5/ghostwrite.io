class LettersController < ApplicationController
	before_action :set_letter, only: [:show, :edit, :update, :destroy]
	before_action :search_indeed, only: [:show]
	respond_to :html
	layout 'application'
	layout "forms", :only => :new

 def index
		@letter= Letter.all
		@letter_types = LetterType.all
	end

	def personal_index
		@letter= Letter.all
		@letter_types = LetterType.all

	end


	def new
	 # @letter = Letter.new
		@letter = Letter.new(letter_type_id: params[:letter_type_id])
		# @letter.number_of_fields = number of fields on letter_type
		# get the fields out of the params
		# letter.fields = [{letter_type.field1: }]
		@letter_types = LetterType.all
		respond_with(@letter_types)

	end



	# POST /ghostwrites/1
	# POST /ghostwrites/1.json
	def create
		@letter = Letter.new(letter_params)
		if current_user
			@letter = current_user.letters.create(letter_params)
			@letter.user_id = current_user.id
		end 
		@letter.client_ip = request.remote_ip

		respond_to do |format|
			if @letter.save
				format.html { redirect_to @letter, notice: 'Letter was successfully created.' }
				format.json { render action: 'show', status: :created, location: @letter }
			else
				format.html { render action: 'new' }
				format.json { render json: @letter.errors, status: :unprocessable_entity }
			end
		end
	end
		
	# POST
	def update
		@letter = Letter.find(params[:id])
		if @letter.update_attributes(params[:letter])
			redirect_to @letter, notice: 'Product was successfully updated.'
		else
			render action: "edit"
		end
	end
		


		end

	# GET
	def edit
		@letter = Letter.find(params[:id])
		
	end
	
	# GET
	def show

	end

	#  TransactionMailer.welcome(@letter).deliver

 

 private
		# Use callbacks to share common setup or constraints between actions.
		def letter
			@letter = Letter.new(letter_type_id: params[:letter_type_id])
		end

		def set_letter
			# binding.pry
			@letter = Letter.find(params[:id])
		end

		def search_indeed
			letter = Letter.find(params[:id])

			# Check if the letter has any of these fields, use the first one it finds
			query ||= letter['properties']['position']
			query ||= letter['properties']['skill1']
			query ||= letter['properties']['one_word']
			query ||= letter['properties']['background']

			@jobs = {}
			unless query.nil? && letter.client_ip.nil?
				client = Indeed::Client.new ENV['INDEED_PUBLISHER_KEY']
				search_params = {
						:q => query,
						:l => letter['zipcode'],
						:limit => 5,
						:userip => letter.client_ip,
						:useragent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2)'
				}
				@jobs = client.search(search_params)
				
			end
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def letter_params
			params.require(:letter).permit(:letter_type, :user_id, :photo, :photo_file_name, :photo_content_type, :category, :client_ip, :letter_type_id, :bootsy_image_gallery_id, :letter_types_attributes => [ :id, :name, :category]).tap do |whitelisted|
		whitelisted[:properties] = params[:letter][:properties]
	end
end
		


