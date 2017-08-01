class RemoveTournamentIdFromGame < ActiveRecord::Migration
  def up
    remove_column :games, :tournament_id
  end

  def down
    add_column :games, :tournament_id, :integer
  end
end
