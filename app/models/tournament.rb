class Tournament < ActiveRecord::Base
  attr_accessible :address, :date, :max_player, :name
  has_many :matche, :dependent => :destroy
  has_many :game_tournement_joins, :dependent => :delete_all
  has_many :games, through: :game_tournement_joins

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
