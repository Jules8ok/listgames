class RemoveMatcheIdFromGame < ActiveRecord::Migration
  def up
    remove_column :games, :matche_id
  end

  def down
    add_column :games, :matche_id, :integer
  end
end
