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
    @tournament.update(params[:tournament])
    redirect_to tournaments_path
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    redirect_to tournaments_path
  end
  def sign
   @user = current_user
   @tournament = Tournament.find(params[:id])
   solo_match = @tournament.matche.select { |p| p.users.size == 1 }.first

   if solo_match.nil?
     @match = Matche.new
     @match.users << @user
     @match.tournament = @tournament
     @match.save!
   elsif solo_match.users.include? @user
      redirect_to matches_path
    else
      @match = solo_match
      @match.users << @user
      @match.save!
    end
end
end
