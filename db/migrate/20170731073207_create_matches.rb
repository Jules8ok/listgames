class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :score
      t.references :user
      t.references :tournament
      t.references :game

      t.timestamps
    end
    add_index :matches, :user_id
    add_index :matches, :tournament_id
    add_index :matches, :game_id
  end
end
