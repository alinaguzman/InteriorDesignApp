class CreateDesignersTagsTable < ActiveRecord::Migration
  def up
    create_table :designers_tags,  id: false do |t|
      t.belongs_to :designer
      t.belongs_to :tag
    end
  end

  def down
    drop_table :designers_tags
  end
end
