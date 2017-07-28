class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :maxuser
      t.string :address
      t.references :user
      t.string :date
      t.string :result

      t.timestamps
    end
    add_index :tournaments, :user_id
  end
end
