

rails generate model Followings person_id:integer follower_id:integer blocked:boolean

class Person < ActiveRecord::Base
  has_many :followers, :class_name => 'Followings', :foreign_key => 'person_id'
  has_many :following, :class_name => 'Followings', :foreign_key => 'follower_id'
end
and corresponding in the Followings class you write

class Followings < ActiveRecord::Base
  belongs_to :person
  belongs_to :follower, :class_name => 'Person'
end

class User
  has_many :followers, :class_name => 'Followings', :foreign_key => 'user_id'
  has_many :following, :class_name => 'Followings', :foreign_key => 'follower_id'
end

class Followings < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, :class_name => 'User'
end

Followings - table name follower_id
Favorites - table name

create_table "favorites", :force => true do |t|   #change name
  t.integer "user_id"
  t.integer "favorited_id"   #change this
end


class user mine
has_many :favorites, :class_name => 'Favorite', :foreign_key => 'favorited_id'

class Favorite < ActiveRecord::Base    mine
  belongs_to :user
  belongs_to :favorited, :class_name => 'User'
end

