class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :date
      t.string :address
      t.integer :max_player

      t.timestamps
    end
  end
end
