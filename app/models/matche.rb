class Matche < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :game
  has_many :user_matche_joins, :dependent => :delete_all
  has_many :users, through: :user_matche_joins
  attr_accessible :score, :game_id, :tournament_id, :user_id, :draw, :user, :win_points, :game, :tournament

  def winner
    if !self.win_points.nil?
      if self.win_points == 3
        self.user.first_name
      elsif self.win_points == 1
        "Draw"
      end
    else
      "Not Played"
    end
  end

end
