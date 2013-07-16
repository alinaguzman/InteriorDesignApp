class UsersController < ApplicationController
  def index

  end

  def search
  end

  def results
    @tags = Tag.where(name: params[:name])
    @tags.each do |tag|
      @designers = []
      @designers << User.find(tag.user_id)
    end
    @designers
  end
end


def designer_to_tag
  User.where(role:"Designer").each do |designer|
    designer.tags.each do |tag|
      puts tag.name
    end
  end
end

def tag_to_designer
  Tag.where(name:"industrial").each do |tag|
    tag.user_id.each do |user|
      puts user.username
    end
  end
end