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

end