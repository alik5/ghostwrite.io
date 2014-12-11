class CustomMailer < ActionMailer::Base
  default from:"ghost@ghostwrite.io"


  
  def signup_confirmation(user)
    @greeting = "Hi"

    @user = user

    mail(:to => user.email, :subject => "Registered", :from => "ghost@ghostwrite.io")
  end
end
