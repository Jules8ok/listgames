class CreateGameTournementJoins < ActiveRecord::Migration
  def change
    create_table :game_tournement_joins do |t|
      t.references :game
      t.references :tournament

      t.timestamps
    end
    add_index :game_tournement_joins, :game_id
    add_index :game_tournement_joins, :tournament_id
  end
end
