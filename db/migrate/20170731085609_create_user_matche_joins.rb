class CreateUserMatcheJoins < ActiveRecord::Migration
  def change
    create_table :user_matche_joins do |t|
      t.references :matche
      t.references :user

      t.timestamps
    end
    add_index :user_matche_joins, :matche_id
    add_index :user_matche_joins, :user_id
  end
end
