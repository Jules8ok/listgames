class AddCloseToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :close, :boolean, default: false
  end
end
