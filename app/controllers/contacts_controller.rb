class ContactsController < ApplicationController
    def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact_params])
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

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :telephone)
  end

end
