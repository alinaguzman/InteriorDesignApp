class Tag < ActiveRecord::Base
  has_and_belongs_to_many :designers
  has_and_belongs_to_many :clients
  attr_accessible :name
end