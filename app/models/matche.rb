class Matche < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :game
  attr_accessible :score
  has_many :user_matche_joins, :dependent => :delete_all
  has_many :users, through: :user_matche_joins
end
