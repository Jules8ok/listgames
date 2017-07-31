class Game < ActiveRecord::Base

  has_many :matche, :dependent => :destroy
  has_many :game_tournament_joins, :dependent => :delete_all
  has_many :tournaments, through: :game_tournament_join
  attr_accessible :title, :description

end
