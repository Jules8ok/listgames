class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.references :matche
      t.references :game_tournament_join
      t.references :tournament

      t.timestamps
    end
    add_index :games, :matche_id
    add_index :games, :game_tournament_join_id
    add_index :games, :tournament_id
  end
end
