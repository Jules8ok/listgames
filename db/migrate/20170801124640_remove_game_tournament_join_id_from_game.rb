class RemoveGameTournamentJoinIdFromGame < ActiveRecord::Migration
  def up
    remove_column :games, :game_tournament_join_id
  end

  def down
    add_column :games, :game_tournament_join_id, :integer
  end
end
