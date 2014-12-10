class CustomMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.custom_mailer.custom_message.subject
  #
  def custom_message(ghostwrite)
    @greeting = "Hi"

    mail to: "alikfitz@gmail.com", subject: "Custom Email Request"
  end
end
