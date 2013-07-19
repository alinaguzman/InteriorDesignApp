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

  #def designer_to_tag
  #  User.where(role:"Designer").each do |designer|
  #    designer.tags.each do |tag|
  #      puts tag.name
  #    end
  #  end
  #end

  def show
    @user = User.find(params[:id])
  end

  def save_designer
    designer = User.find(params[:id])
    current_user.favorites.create(user: designer)
    redirect_to '/users/profile'
    #client = User client
    #designer = User desigener adding to the list
  end

  def profile
  end

  def message
    @designer = User.find(params[:id])
  end

  def remove
    current_user.favorites.find(params[:favorite]).destroy
    redirect_to '/users/profile'
  end
end
