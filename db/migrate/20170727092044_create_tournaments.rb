class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :maxplayer
      t.string :address
      t.references :players
      t.references :games
      t.string :date
      t.references :matchs
      t.string :result

      t.timestamps
    end
    add_index :tournaments, :players_id
    add_index :tournaments, :games_id
    add_index :tournaments, :matchs_id
  end
end
