class DesignersController < ApplicationController
  def profile
      @tag = Tag.new
  end

  def add_tag
    @tag = Tag.new(params[:tag])
    tag_names = []
    current_user.tags.each do |tag|
      tag_names << tag.name
    end

      if tag_names.include?(params[:tag][:name])
        redirect_to '/designers/profile'
      else
        @tag.save
        current_user.tags << @tag
        redirect_to '/designers/profile'
      end
  end

  def search
    @results = Instagram.user_search(params[:name])
  end

  def results
    results = Instagram.user_search(params[:name])
    insta_id = results.first.id
    @feed = Instagram.user_recent_media(insta_id, {:count => 20})
    @portfolio = Portfolio.new
  end

  def add_to_portfolio
    params[:current_user][:portfolio_ids].each do |url|
      image = Portfolio.new
      image.image_path = url
      image.save
      current_user.portfolios << image
    end
      redirect_to '/designers/profile'
  end
end