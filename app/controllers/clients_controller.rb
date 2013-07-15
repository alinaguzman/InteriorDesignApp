class ClientsController < ApplicationController
  def index
     @clients = Client.all
  end

  def show
     @client = Client.find(params[:id])
  end


  def new
     @client = Client.new
  end


  def create
    @client = Client.new
    @client.save
  end
end