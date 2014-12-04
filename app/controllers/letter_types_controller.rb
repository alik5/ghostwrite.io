class LetterTypesController < ApplicationController
  layout 'home'
  before_action :set_letter_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @letter_types = LetterType.all
    respond_with(@letter_types)
  end

  def show
    respond_with(@letter_type)
  end

  def new
    @letter_type = LetterType.new
    @letter_type.letter_fields.build
    respond_with(@letter_type)
    
  
  
  end

  def edit
  end

  def create
    @letter_type = LetterType.new(letter_type_params)
    @letter_type.save
    respond_with(@letter_type)

  end

  def update
    @letter_type.update(letter_type_params)
    respond_with(@letter_type)
  end

  def destroy
    @letter_type.destroy
    respond_with(@letter_type)
  end

  private
    def set_letter_type
      @letter_type = LetterType.find(params[:id])
    end

    def letter_type_params
      params.require(:letter_type).permit(:name, allow_destroy: true, :letter_fields_attributes => [ :id, :name, :short_name, :field_type, :letter_type_id, allow_destroy: true ], :questions_attributes => [ :id, :name])
    end
end
