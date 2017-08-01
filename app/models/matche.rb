class Matche < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :game
  has_many :user_matche_joins, :dependent => :delete_all
  has_many :users, through: :user_matche_joins
  attr_accessible :score, :game_id, :tournament_id, :user_id
end
