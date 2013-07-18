class WelcomeController < ApplicationController

  def about
    if current_user && current_user.role == "Client"
      redirect_to '/users/profile'
    elsif current_user && current_user.role == "Designer"
      redirect_to '/designers/profile'
    else
      ""
    end
  end

  def index
    if current_user && current_user.role == "Client"
      redirect_to '/users/profile'
    elsif current_user && current_user.role == "Designer"
      redirect_to '/designers/profile'
    else
      ""
    end
  end

  def instatest
    @instagram = Instagram.user_recent_media("15935796", {:count => 30})
    @pavel = Instagram.user_recent_media("11290717", {:count => 30})

  end
end