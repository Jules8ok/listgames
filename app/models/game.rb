class Game < ActiveRecord::Base

  has_many :matche, :dependent => :destroy
  has_many :game_tournement_joins, :dependent => :delete_all
  has_many :tournaments, through: :game_tournement_joins
  attr_accessible :title, :description

end
