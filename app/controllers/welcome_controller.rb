class WelcomeController < ApplicationController
  def index
  	@form = render_to_string "devise/registrations/new"

  	puts "form is here"

  	puts @form
  end
end
