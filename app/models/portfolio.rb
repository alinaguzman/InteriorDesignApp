class Portfolio < ActiveRecord::Base
  belongs_to :user
  attr_accessible :image_path
end
