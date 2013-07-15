class DesignersController < ApplicationController
  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find(params[:id])
  end


  def new
    @designer = Designer.new
  end


  def create
    @designer = Designer.new
    @designer.save
  end
end