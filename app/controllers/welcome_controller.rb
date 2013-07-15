class WelcomeController < ApplicationController


  def index
    if params[:username]
      username = params[:username]
      @user = Instagram.user_search(username).first
      @url = Instagram.user_recent_media(@user.id).first.images.standard_resolution.url
    end

    @photos = Instagram.tag_recent_media("mainecoon")
  end

  def search

    @user = Instagram.user_search(params[:username]).first

  end
end