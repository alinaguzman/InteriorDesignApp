class Portfolio < ActiveRecord::Base
  belongs_to :designer
  attr_accessible :image_path
end
