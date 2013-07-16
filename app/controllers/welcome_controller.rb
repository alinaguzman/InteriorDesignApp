class WelcomeController < ApplicationController

  def index
   #if params[:username]
    #  username = params[:username]
    #  @user = Instagram.user_search(username).first
    #  @url = Instagram.user_recent_media(@user.id).first.images.standard_resolution.url
   # end

   # @photos = Instagram.tag_recent_media("interiordesign")


  end

  def instatest
    @instagram = Instagram.user_recent_media("15935796", {:count => 30})

  end
end