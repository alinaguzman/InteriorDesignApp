class DesignersController < ApplicationController
  def profile
      @tag = Tag.new
  end

  def add_tag
    @tag = Tag.new(params[:tag])
    @tag.save
    #binding.pry
    current_user.tags << @tag
    redirect_to '/designers/profile'
  end

  def search
    @results = Instagram.user_search(params[:name])
  end

  def results
    @results = Instagram.user_search(params[:name])
    @portfolio = Portfolio.new
  end

  def add_to_portfolio
    image = Portfolio.new
    image.image_path = params[:image_path]
    #binding.pry

    image.save
    current_user.portfolios << image
    redirect_to '/designers/profile'
  end
end