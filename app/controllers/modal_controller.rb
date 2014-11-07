class ModalController < ApplicationController
  def index
  	@form = render "devise/registrations/new"

  	puts "form is here"

  	puts @form
  end
end
