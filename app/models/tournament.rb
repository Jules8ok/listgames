class Tournament < ActiveRecord::Base
  has_many :players
  has_many :games
  has_many :matchs
  attr_accessible :address, :date, :maxplayer, :name, :result
end
