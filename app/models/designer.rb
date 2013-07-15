class Designer < ActiveRecord::Base
  has_many :portfolios
  belongs_to :user
  has_and_belongs_to_many :clients
  has_and_belongs_to_many :tags
  attr_accessible :description, :name
end
