class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.string :description
      t.belongs_to :user
      t.timestamps
    end
  end
end
