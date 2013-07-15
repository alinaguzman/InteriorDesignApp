class CreateFavoritesTable < ActiveRecord::Migration
  def up
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :favorited
    end
  end

  def down
    drop_table :favorites
  end
end
