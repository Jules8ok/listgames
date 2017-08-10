class TournamentsController < ApplicationController


  def index
    @tournaments = Tournament.all


    @hash = Gmaps4rails.build_markers(@tournaments) do |tournament, marker|
      marker.lat tournament.latitude
      marker.lng tournament.longitude
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
    @tournament_coordinates = { lat: @tournament.latitude, lng: @tournament.longitude }
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(params[:tournament])
    @tournament.games = Game.where("id in (?)", params[:games])
    @tournament.save!
    redirect_to tournaments_path
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    @tournament.update_attributes(params[:tournament])
    @tournament.games = Game.where("id in (?)", params[:games])
    redirect_to tournaments_path
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    redirect_to tournaments_path
  end
  def sign
   @already_sign = false
   @user = current_user
   @tournament = Tournament.find(params[:id])
   solo_match = @tournament.matche.select { |p| p.users.size == 1 }.first

   if solo_match.nil?
     @match = Matche.new
     @match.users << @user
     @match.tournament = @tournament
     @match.save!
   elsif solo_match.users.include? @user
    @already_sign = true
  else
    @match = solo_match
    @match.users << @user
    @match.save!
  end
  respond_to do |format|
    format.js
  end
end
def play_games
  @tournament = Tournament.find(params[:id])
  @tournament.matche.each do |k|
    rand = Random.rand(4)
    winner = Random.rand(2)
    score = ""
    case rand
    when 0, 1, 2
      score = "1-0"
      win_points = 3
      k.user = k.users[winner]
    when 3
      score = "1-1"
      win_points = 1
      k.user = nil
    end
    k.score = score
    k.save
  end
  respond_to do |format|
    format.js
  end

end

def close
    @tournament = Tournament.find(params[:id])
    @tournament.games.each do |v|
      matches = v.matche.where(:tournament_id => @tournament.id)
      users = matches.inject([]){|m, n| m + n.users}
      users_match_list = matches.map{|m| m.users}
      remaining_match = users.combination(2)
        .select{|p| !(users_match_list.include? p)}
      remaining_match.each do |m|
        new_match = Match.new
        new_match.tournament = @tournament
        new_match.users = m
        new_match.game = v
        new_match.save
      end
      matches.each{|m| m.destroy if m.users.size < 2}
    end
    @tournament.close = true
    @tournament.save!
    redirect_to tournament_path
  end
end
