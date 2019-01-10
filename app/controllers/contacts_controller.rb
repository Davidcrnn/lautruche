class ContactsController < ApplicationController
    def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Merci pour votre message !'
      redirect_to root_path
    else
      flash.now[:error] = "Le message n'a pas pu être envoyé. Veuillez réessayer."
      render :new
    end
  end

end
