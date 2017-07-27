class Game < ActiveRecord::Base
  has_many :player
  attr_accessible :name
end
