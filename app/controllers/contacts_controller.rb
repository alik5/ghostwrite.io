class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end


  def user_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

