class CreateClientsDesignersTable < ActiveRecord::Migration
  def up
    create_table :clients_designers,  id: false do |t|
      t.belongs_to :client
      t.belongs_to :designer
    end
  end

  def down
    drop_table :clients_designers
  end
end
