class CreateClientsTagsTable < ActiveRecord::Migration
  def up
    create_table :clients_tags,  id: false do |t|
      t.belongs_to :client
      t.belongs_to :tag
    end
  end

  def down
    drop_table :clients_tags
  end
end
