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


  def designer_to_tag
    User.where(role:"Designer").each do |designer|
      designer.tags.each do |tag|
        puts tag.name
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
