class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :image_path
      t.belongs_to :designer

      t.timestamps
    end
  end
end
