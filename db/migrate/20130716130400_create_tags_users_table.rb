class CreateTagsUsersTable < ActiveRecord::Migration
  def up
    create_table :tags_users, id: false do |t|
      t.belongs_to :tag
      t.belongs_to :user
    end
  end

  def down
    drop_table :tags_users
  end
end
