class KindOfLettersController < ApplicationController
  before_action :set_type_of_letter, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @kind_of_letters = KindOfLetter.all
    respond_with(@type_of_letters)
  end

  def show
    respond_with(@kind_of_letter)
  end

  def new
    @kind_of_letter = KindOfLetter.new
    respond_with(@kind_of_letter)
    @kind_of_letter.fields.build
  end

  def edit
  end

  def create
    @kind_of_letter = KindOfLetter.new(type_of_letter_params)
    @kind_of_letter.save
    respond_with(@kind_of_letter)
  end

  def update
    @kind_of_letter.update(type_of_letter_params)
    respond_with(@kind_of_letter)
  end

  def destroy
    @kind_of_letter.destroy
    respond_with(@kind_of_letter)
  end

  private
    def set_type_of_letter
      @kind_of_letter = KindOfLetter.find(params[:id])
    end

    def type_of_letter_params
      params.require(:kind_of_letter).permit(:kind_of_letter, fields_attributes: [ :fields, allow_destroy: true ])

      
    end
  end


