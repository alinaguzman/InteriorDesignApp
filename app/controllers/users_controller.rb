class UsersController < ApplicationController
  def index
  end

  def search
    @tag_users = []
    Tag.where(name: params[:name]).each do |tag|
      tag.users.each do |user|
        @tag_users << user

      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  #Save a designer to a clients favorite list
  def save_designer
    designer = User.find(params[:id])
    current_user.favorites.create(user: designer)
    redirect_to '/users/profile'
  end

  def profile
  end

  #Shows the contact form for the client to contact designer
  def message
    @designer = User.find(params[:id])
  end

  #Removes a designer from a clients Favorite List
  def remove
    current_user.favorites.find(params[:favorite]).destroy
    redirect_to '/users/profile'
  end
end
