class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  attr_accessible :email, :password, :username, :password_confirmation, :role, :name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_and_belongs_to_many :tags
  has_many :portfolios

  has_many :favorites, :class_name => 'Favorite', :foreign_key => 'favorited_id'

  #has_many :favorites
  #has_many :saved, through: :favorites, source: 'favorited'
end


#has_many :following, :class_name => 'Followings', :foreign_key => 'follower_id'

