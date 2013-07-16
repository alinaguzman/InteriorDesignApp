class UsersController < ApplicationController
  def index

  end

  def search
  end

  def results
    @search_results = Tag.where(name: params[:name])
  end
end