class CustomMailer < ActionMailer::Base
  default from:"ghost@ghostwrite.io"


  
  def signup_confirmation(user)
    @greeting = "Hi"

    @user = user

    mail(:to => user.email, :subject => "Registered")
  end


  def mail_letter(ghostwrite,photo)
    @greeting = "Hi"

    @ghostwrite = ghostwrite
    

    attachments[photo.pdf_file_file_name] = File.read(photo.pdf_file.path) 
    mail(:to => "alikfitz@gmail.com", :subject => "Custom Letter", :from => "ghost@ghostwrite.io")
  end
end
