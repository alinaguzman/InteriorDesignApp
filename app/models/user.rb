class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_many :tags
  has_many :portfolios

  has_many :favorites
  has_many :saved, through: :favorites, source: 'favorited'
  attr_accessible :email, :password, :username, :password_confirmation, :role
end
