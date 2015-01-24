class LettersController < ApplicationController
	before_action :set_letter, only: [:show, :edit, :update, :destroy]
	respond_to :html
	layout 'application'

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
		client = Indeed::Client.new ENV['INDEED_PUBLISHER_KEY']
		search_params = {
				:q => 'ruby',
				:l => 'boston',
				:limit => 2,
				:userip => '1.2.3.4',
				:useragent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2)'
		}
		@jobs = client.search(search_params)
	end

	#  TransactionMailer.welcome(@letter).deliver

 

 private
		# Use callbacks to share common setup or constraints between actions.
		def letter
			@letter = Letter.new(letter_type_id: params[:letter_type_id])
		end

		def set_letter
			@letter = Letter.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def letter_params
			params.require(:letter).permit(:letter_type, :user_id, :photo, :photo_file_name, :photo_content_type, :category, :letter_type_id, :letter_types_attributes => [ :id, :name, :category]).tap do |whitelisted|
		whitelisted[:properties] = params[:letter][:properties]
	end
end
		


