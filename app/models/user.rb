class User < ActiveRecord::Base
  has_many :designers
  has_many :clients
  attr_accessible :email, :password, :username
end
