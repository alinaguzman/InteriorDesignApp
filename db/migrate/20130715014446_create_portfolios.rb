class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :image_path

      t.timestamps
    end
  end
end
