class CustomMailer < ActionMailer::Base
  default from:"ghost@ghostwrite.io"

  
  
  def signup_confirmation
    @greeting = "Hi"

    mail to: "alikfitz@gmail.com"
  end
end
