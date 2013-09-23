class ContactsController < ApplicationController

  def create
    @client = Client.find(params[:client_id])
    @contact = @client.contacts.create(params[:contact].permit(:nom, :prenom, :telephonefixe,:telephoneportable))
    redirect_to client_path(@client)
  end


end