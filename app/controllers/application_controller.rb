class ApplicationController < ActionController::Base
 
  protect_from_forgery with: :exception

  #before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation) }
  end

  # explicitly require the Mandrill API
require 'mandrill'

	# send a new message
	m = Mandrill::API.new
	message = { 
	:subject=> "Welcome To Ghostwrite.io", 
	:from_name=> "Ali FitzGerald",
	:from_email=>"admin@ghostwrite.io",
	:to=>User.new, 
	:html=>render_to_string('custom_mailer/mail_letter', :layout => false), 
	:merge_vars => User.new,
	:preserve_recipients => false
	} 
	sending = m.messages.send message

 

end
 

  

