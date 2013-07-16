class ChangeTableFavoritesName < ActiveRecord::Migration
  def up
    rename_table :favorites, :followings
  end

  def down
  end
end
