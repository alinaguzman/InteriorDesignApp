class Client < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :designers

  attr_accessible :name
end
