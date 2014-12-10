# Preview all emails at http://localhost:3000/rails/mailers/custom_mailer
class CustomMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/custom_mailer/custom_message
  def custom_message
    CustomMailer.custom_message
  end

end
