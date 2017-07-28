class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :tournament_id
      t.integer :player_id

      t.timestamps
    end
  end
end
