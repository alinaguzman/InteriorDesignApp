class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorited, class_name :'User'
end