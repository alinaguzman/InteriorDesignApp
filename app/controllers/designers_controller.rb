class DesignersController < ApplicationController
  def profile
      @tag = Tag.new
  end

  def add_tag
    @tag = Tag.new(params[:tag])
    @tag.save
    current_user.tags << @tag
    redirect_to '/designers/profile'
  end

  def search
    @results = Instagram.user_search(params[:name])
  end

  def results
    @results = Instagram.user_search(params[:name])
  end
end