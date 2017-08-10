class GamesController < ApplicationController


  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    Game.create(params[:game])
    respond_to do |format|
      format.js
      format.html{redirect_to games_path}
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(params[:game])
    redirect_to games_path
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  def product_params
    params.require(:product).permit(:name, :description, :photo, :photo_cache)
  end
end
