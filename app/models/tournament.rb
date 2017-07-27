class Tournament < ActiveRecord::Base
  belongs_to :players
  belongs_to :games
  belongs_to :matchs
  attr_accessible :address, :date, :maxplayer, :name, :result
end
