class ChangePortfoliosTableColumn < ActiveRecord::Migration
  def up
    change_table :portfolios do |t|
      t.rename :designer_id, :user_id
     end
  end

  def down
  end

end
