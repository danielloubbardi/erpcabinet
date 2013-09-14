class ClientsController < ApplicationController
before_filter :authenticate_user!


  def new
  @client = Client.new
  end

  def create
  #render text: params[:client].inspect
    @client = Client.new(client_params)
	if @client.save
	flash[:success] = "Le nouveau client a été créé avec succès!"
	redirect_to @client
	else
	render 'new'
	end
    
  end

  def show
  @client = Client.find(params[:id])
  edit_client_path=@client
  end

  def index
  @clients = Client.all
  end


  def edit
  @client = Client.find(params[:id])
  end

  def update
  @client = Client.find(params[:id])
 
    if @client.update(params[:client].permit(:nom, :sirene, :code_naf, :adresse, :code_postal, :ville, :forme_juridique, :capital, :mandataire_social, :date_immatriculation, :email))
      redirect_to clients_path
    else
      render 'edit'
    end
  end


  def destroy
    @client = Client.find(params[:id])
    @client.destroy
 
    redirect_to clients_path
  end


private

    def client_params
      params.require(:client).permit(:nom, :sirene, :code_naf, :adresse, :code_postal, :ville, :forme_juridique, :capital, :mandataire_social, :date_immatriculation, :email)
 end

end



