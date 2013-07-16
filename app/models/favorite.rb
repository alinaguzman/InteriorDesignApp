class Favorite < ActiveRecord::Base
  attr_accessible :user
  belongs_to :user
  belongs_to :favorited, :class_name => 'User'
end
