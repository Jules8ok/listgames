class MatchesController < ApplicationController
  before_filter :set_match, only: [:show, :edit, :update, :destroy]

  def index
    @matches = Matche.all.sort_by{|m| m.tournament.name ? m.tournament.name: m.videogame.title}
  end

  def show
  end

  def new
    @matche = Matche.new
  end

  def edit
    respond_to do |format|
      format.html{ render(:edit, layout: false)}
    end
  end

  def create
    @matche = Matche.new(match_params)


  def update

  end

  def destroy
    @match.destroy
    end
  end


  private

    def set_match
      @match = Match.find(params[:id])
    end


    def match_params
      params[:match]
    end
  end
