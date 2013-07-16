class RemoveUserIdFromTags < ActiveRecord::Migration
  def up
    remove_column :tags, :user_id
  end

  def down
  end
end
