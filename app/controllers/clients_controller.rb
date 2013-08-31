class ClientsController < ApplicationController
before_filter :authenticate_user!

  def list
   @client= Client.all
  end

  def new
    @client = Client.new
  end

def update
end

def delete
end

def read
end


end
